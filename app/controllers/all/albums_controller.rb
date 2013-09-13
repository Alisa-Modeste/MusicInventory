class All::AlbumsController < ApplicationController
  def index
    bands = Band.all
    @all_albums = []

    bands.each do |band|
      @all_albums << [band, band.albums]
    end

    render :index
  end


end
