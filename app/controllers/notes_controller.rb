class NotesController < ApplicationController

  def create
    #render json: params[:note]

    note = Note.create!(params[:note])
    if note.save
      #render text: "Note Saved!"
      redirect_to track_url(params[:note][:track_id])
    else
      render text: "Error"
    end

  end

  def destroy
  end


end