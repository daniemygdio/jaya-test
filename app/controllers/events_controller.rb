class EventsController < ApplicationController
    protect_from_forgery prepend: true
    before_action :authenticate_with_http_digest
    
    def index
    end

    def create
        @octoevent = Octoevent.new()
        @octoevent.github_action = request.request_parameters['action']

        params.require(:issue).permit(:url, :number).tap do |events_params|
            @octoevent.url = events_params.require(:url)
            @octoevent.issue = events_params.require(:number)
        end

        if @octoevent.save
            render json:{"message":"success"}, status 200 
        else
            render json:{"message":"error"} 
        end
    end

    def show
    end
end
