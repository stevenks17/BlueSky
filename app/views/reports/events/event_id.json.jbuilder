
json.event @event.title
json.conferences_count @event.conferences.count
json.total_attendees_count @event.attendees.count


json.conferences @event.conferences, partial: 'conference', as: :conference

