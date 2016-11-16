class EventsController < ApplicationController
	# before_action :find_owner, only:[:edit]
	# before_action :find_user, only:[:create]

	def new
		@event=Event.new
		@events=Event.all
		@user_names=User.all
		# @event = event.find_by_id(params[:id])

	end
	def create
		# binding.pry
        @event = Event.new(event_params)
        # binding.pry
		@event.owner_id=current_user.id

		@event.save
		params['role_ids'].each do |a|
			@invitation = Invitation.new
			@invitation.inviter_id = current_user.id
			@invitation.invitee_id = a
			@invitation.event_id = @event.id
			@invitation.save
		end
		redirect_to create_path
	end

	def edit
		@event = Event.find_by_id(params[:id])
		@user_names=User.all
		
	end
	def update
		# binding.pry
		@event = Event.find_by_id(params[:id])
		@event.update_attributes(event_params)
		redirect_to new_path
	end
	def destroy
		@event = Event.find_by_id(params[:id])
		@event.destroy
		redirect_to new_path
	end
	private
	def event_params
		params.require(:event).permit(:event_title,:venu, :date,:discription,:invitees,:status)
	end
	# def find_owner
	# 	@owner =  Event.find_by_owner_id(params[:owner_id])
	# end
end
