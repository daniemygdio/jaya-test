class EventsController < AdminsController
    def index
        @octoevent = Octoevent.all
        render json: @octoevent
    end

    def create
        @octoevent = Octoevent.new()
        @octoevent.issue_action = request.request_parameters['action']

        params.require(:issue).permit(:url, :number, :created_at, :updated_at).tap do |events_params|
            @octoevent.url = events_params.require(:url)
            @octoevent.issue_number = events_params.require(:number)
            @octoevent.created_at = events_params.require(:created_at)
            @octoevent.updated_at = events_params.require(:updated_at)
        end

        if @octoevent.save
            render json:{"message":"success"}
        else
            render json:{"message":"error"} 
        end
    end

    def show
        @octoevent = Octoevent.find_by(issue_number: params[:id])
        render json: @octoevent
    end
end
