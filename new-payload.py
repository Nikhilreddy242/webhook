def format_teams_message(account_id, alarm_name, alarm_description, new_state, reason, change_time):
    sections = []
    section = {
      "activityTitle": f"WMPOR CloudWatch Notification: {alarm_name}",
      "activitySubtitle": f"Desc: {alarm_description}",
      "facts": [
        {"name": "AWS Account", "value": account_id},
        {"name": "New State", "value": new_state},
        {"name": "Reason", "value": reason},
        {"name": "Time", "value": change_time},
      ],
      "markdown": True,
      "text": "----------------------------------------------------------"
    }

    sections.append(section)
    
    teams_card = {
        "@type": "MessageCard",
        "@context": "https://schema.org/extensions",
        "themeColor": "55893D",
        "summary": "Wealth Portal Notifications for AWS Account: {account_id}",
        "sections": sections
    }

    return teams_card

##################


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
