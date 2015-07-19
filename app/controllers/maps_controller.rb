class MapsController < ApplicationController
	def index
		@events = Event.all
	end

	def fetch
		@events = Event.all

		respond_to do |format|
			format.json { render json: @events }
		end
	end

	def loadDetails
		@event = Event.find(params[:event_id]);

		respond_to do |format|
			format.json {render json: @event }
		end
	end


	def loadComments
		@event = Event.find(params[:event_id])

		@comments = @event.comments.all

		respond_to do |format|
			format.json {render json: @comments }
		end
	end
end
