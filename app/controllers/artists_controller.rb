class ArtistsController < ApplicationController
  def index
    @artists = Artist.all
  end

  def show
    @artist = find_artist
  end

  def new
    @artist = Artist.new
  end

  def create
    @artist = find_artist

    if @artist.save
      redirect_to @artist
    else
      render :new
    end
  end

  def edit
    @artist = find_artist
  end

  def update
    @artist = find_artist

    @artist.update(artist_params)

    if @artist.save
      redirect_to @artist
    else
      render :edit
    end
  end

  def destroy
    @artist = find_artist
    @artist.destroy
    flash[:notice] = "Artist deleted."
    redirect_to artists_path
  end

  private

  def find_artist
    Artist.find(params[:id])
  end

  def artist_params
    params.require(:artist).permit(:name)
  end
end
