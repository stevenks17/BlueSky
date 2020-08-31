json.title conference.title
json.attendees_count conference.attendees.count

@event.conferences.each do |conference|
    json.speakers conference.speakers
end
