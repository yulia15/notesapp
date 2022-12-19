class NotesController < ApplicationController
	def index

	end

	def new 

	end

	def show
		@note = Note.find(params[:id])
	end


	def create
		##render plain: params[:post].inspect
		@note = Note.new(note_params)

		@note.save
		redirect_to @note

	end

	private def note_params
		params.require(:note).permit(:title, :body)
	end 
end
