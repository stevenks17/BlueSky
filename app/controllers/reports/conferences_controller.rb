module Reports
  class ConferencesController < ::ApplicationController
    include Pagy::Backend

    def attendees
      @pagy, @conference = pagy(Conference.find(attendee_params[:conference_id]))
    end

    private

    def attendee_params
      params.permit(:conference_id)
    end
  end
end
