class AlbumsController < ApplicationController
  def index
    # @albums = Album.all

    bands = Band.all
    @all_albums = []

    bands.each do |band|
      @all_albums << [band, band.albums]
    end

    render :index
  end

  def show
    render :show
  end

  def new
    @bands = Band.all
    render :new
  end

  def create
    #render json: params
    album = params[:album].clone

    if album[:type] == "live"
      album[:name] << " (Live)"
    elsif album[:type] == "studio"
      album[:name] << " (Studio)"
    end

    album.delete(:type)

    #EDIT
    temp_album = album.clone
    p album

    album = Album.create!(album)
    if album.save
     # render text: "Album Saved!"
     render json: temp_album
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
