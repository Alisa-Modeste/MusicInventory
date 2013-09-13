class BandsController < ApplicationController
  def index
    @bands = Band.all
    render :index
  end

  def show
  end

  def new
    render :new
  end

  def create
    band = params[:band_name]
    band = Band.new(name: band)

    if band.save
      render text: "Band saved!"
    else
      #EDIT
      render text: "Errors"
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
