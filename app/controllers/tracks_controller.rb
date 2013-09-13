class TracksController < ApplicationController
  def index
  end

  def show
  end

  def new
    @band = params[:band_id]
    @album = params[:album_id]
    render :new
  end

  def create
    render json: params
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
