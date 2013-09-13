class TracksController < ApplicationController
  def index
    @album = Album.find(params[:album_id])
  end

  def show
    track = Track.find(params[:id])
    @notes = track.notes #.first #.note
    @album = track.album
    @band = @album.band
    render :show
  end

  def new
    @band = params[:band_id]
    @album = params[:album_id]
    render :new
  end

  def create
    track = Track.create!(params[:track])
    if track.save
      render text: "Track saved!"
    else
      #EDIT
      render text: "Error"
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
