import time
import json
import logging
import urllib.request
import boto3
from datetime import datetime, timedelta
from botocore.exceptions import ClientError

TEAMS_WEBHOOK = "https://regions.webhook.office.com/webhookb2/1d64cc35-7517-439a-a3dd-7dea0c13c738@5106ea48-5455-4f16-9fdc-caa5bfaf19dd/IncomingWebhook/c86406205781427a9873462b1f153eff/663f6eb0-ff6b-47b0-b221-0479e7790244/V2LjM2aZwvShXwxsPkdhX7eM2cz3yJ2P833T7Ya9psnNc1"

logger = logging.getLogger()
logger.setLevel(logging.INFO)

sts_client = boto3.client('sts')

def format_teams_message(account_id):
    sections = []
    section = {
      "activityTitle": f"WMPOR ITR Notification: ",
	  "activitySubtitle": "On Client Portfolio 999999999999",
      "facts": [
        {"name": "AWSAccountId", "value": account_id},
		{"name": "Client Account", "value": "99999999999999"},
		{"name": "Client Portfolio", "value": "99999999999999"},
		{"name": "Trade Needs Approval", "value": "99999999999999"},
      ],
      "markdown": True,
      "text": "----------------------------------------------------------"
    }

    sections.append(section)
    
    teams_card = {
        "@type": "MessageCard",
        "@context": "https://schema.org/extensions",
        "themeColor": "55893D",
        "summary": "Wealth Portal Notifications for AccountId: {account_id}",
        "sections": sections,
		"potentialAction": [{
        "@type": "ActionCard",
        "name": "Approve Trade",
        "inputs": [{
            "@type": "TextInput",
            "id": "comment",
            "isMultiline": "false",
            "title": "Add a comment here for this task"
        }],
        "actions": [{
            "@type": "HttpPOST",
            "name": "Add comment",
            "target": "https://learn.microsoft.com/outlook/actionable-messages"
        }]
        }, {
            "@type": "ActionCard",
            "name": "Reject Trade",
            "inputs": [{
                "@type": "DateInput",
                "id": "dueDate",
                "title": "Enter a due date for this task"
            }],
            "actions": [{
                "@type": "HttpPOST",
                "name": "Save",
                "target": "https://learn.microsoft.com/outlook/actionable-messages"
            }]
        }, {
            "@type": "OpenUri",
            "name": "Go to Trade",
            "targets": [{
                "os": "default",
                "uri": "https://learn.microsoft.com/outlook/actionable-messages"
            }]
        }, {
            "@type": "ActionCard",
            "name": "Change status",
            "inputs": [{
                "@type": "MultichoiceInput",
                "id": "list",
                "title": "Select a status",
                "isMultiSelect": "false",
                "choices": [{
                    "display": "Approved",
                    "value": "1"
                }, {
                    "display": "Rejected",
                    "value": "2"
                }, {
                    "display": "Close",
                    "value": "3"
                }]
            }],
            "actions": [{
                "@type": "HttpPOST",
                "name": "Save",
                "target": "https://learn.microsoft.com/outlook/actionable-messages"
            }]
        }]
    }

    return teams_card

def send_to_teams(message):
    url = TEAMS_WEBHOOK
    headers = {'Content-Type': 'application/json'}
    data = json.dumps(message).encode('utf-8')

    req = urllib.request.Request(url, data=data, headers=headers)

    try:
      response = urllib.request.urlopen(req)
      if response.status != 200:
        raise ValueError(f"Request to Teams returned an error")

    except Exception as e:
      logger.info(f"Failed to send message: {e}")

def lambda_handler(event, context):
    account_id = sts_client.get_caller_identity()['Account']

    logger.info(f"AccountId: {account_id}")

    teams_message = format_teams_message(account_id)
    send_to_teams(teams_message)

    return {
      'statusCode': 200,
      'body': json.dumps('Message sent to Microsoft Teams')
    }

######

https://regions.webhook.office.com/webhookb2/1d64cc35-7517-439a-a3dd-7dea0c13c738@5106ea48-5455-4f16-9fdc-caa5bfaf19dd/IncomingWebhook/c86406205781427a9873462b1f153eff/663f6eb0-ff6b-47b0-b221-0479e7790244/V2LjM2aZwvShXwxsPkdhX7eM2cz3yJ2P833T7Ya9psnNc1
