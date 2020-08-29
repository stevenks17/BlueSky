module Reports
  class ConferencesController < ::ApplicationController


    def attendees
       @conference = Conference.find(attendee_params[:conference_id])
       @pagy, @attendees = pagy(@conference.attendees, items: 500)
    end

    private

    def attendee_params
      params.permit(:conference_id)
    end
  end
end
