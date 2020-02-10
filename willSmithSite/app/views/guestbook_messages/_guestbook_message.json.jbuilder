json.extract! guestbook_message, :id, :name, :message, :created_at, :updated_at
json.url guestbook_message_url(guestbook_message, format: :json)
