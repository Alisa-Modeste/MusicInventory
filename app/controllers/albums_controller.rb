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
  end

  def new
    @bands = Band.all
    render :new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
