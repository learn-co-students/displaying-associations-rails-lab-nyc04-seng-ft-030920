class SongsController < ApplicationController
  def index
    @songs = Song.all
  end

  def show
    @song = find_song
  end

  def new
    @song = Song.new
  end

  def create
    @song = Song.new(song_params)
    @song.artist = Artist.find_or_create_by(artist_params)

    if @song.save
      redirect_to @song
    else
      render :new
    end
  end

  def edit
    @song = find_song
  end

  def update
    @song = find_song
    @song.update(song_params)

    if @song.save
      redirect_to @song
    else
      render :edit
    end
  end

  def destroy
    @song = find_song
    @song.destroy
    flash[:notice] = "Song deleted."
    redirect_to songs_path
  end

  private

  def find_song
    Song.find(params[:id])
  end

  def song_params
    params.require(:song).permit(:title)
  end

  def artist_params
    params.require(:artist).permit(:name)
  end
end
