class EventsController < ApplicationController
	def new
		
	end
	def create
		# binding.pry
		@event = Event.new(event_params)
		# @event.user = @user
		@event.save
		redirect_to user_events_path
	end

	def index
		@events= Event.all		
	end

	# def show
	# 	@event = event.find_by_id(params[:event_id])
	# end
	private
	def event_params
		params.require(:event).permit(:event_title, :venu, :date,:discription,:invitees,:status)
	end
end
