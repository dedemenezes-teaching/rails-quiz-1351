class SongsController < ApplicationController

  def index
    @songs = Song.all
  end

  def show
    # read one
    @song = Song.find(params[:id])
  end

  def new
    @song = Song.new
  end

  def create
    # raise
    @song = Song.new(song_params)
    if @song.save
      redirect_to song_path(@song)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def search
    # raise
    # @songs = Song.where(title: params[:query])
    @songs = Song.where(title: params[:name])
  end

  private

  def song_params
    # { song => { title: 'Thriller' }}
    params.require(:song).permit(:title)
  end
end
