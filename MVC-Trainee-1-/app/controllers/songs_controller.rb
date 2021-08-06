class SongsController < ApplicationController
    include SongsHelper
  
    def index
      @songs = Song.all
    end
  
    def create
      song = Song.new(songs_params)
      begin
        song.save!
        flash[:notice] = "Song #{song.name} criado com sucesso"
        redirect_to songs_path
      rescue => err
        puts err
        flash[:notice] = err
        redirect_to new_song_path
      end
    end
  
    def new
      @songs = Song.new
      @gender = Gender.all
      @explicity = Explicity.all
      @albums = Album.all
    end
  
    def edit
      @songs = Song.find(params[:id])
      @gender = Gender.all
      @explicity = Explicity.all
      @albums = Album.all
    end
  
    def show
      @songs = Song.find(params[:id])
    end
  
    def update
      song = Song.find(params[:id])
      begin
        song.update!(songs_params)
        flash[:notice] = "Song #{song.name} alterado com sucesso"
        redirect_to song_path
      rescue => err
        flash[:notice] = err
        redirect_to edit_song_path
      end
    end
  
    def destroy
      song = Song.find(params[:id])
      begin
        song.destroy!
        flash[:notice] = "Song #{song.name} apagado com sucesso"
      rescue
        flash[:notice] = "Ocorreu um erro"
      ensure
        redirect_to songs_path
      end
    end
  
    private
    def songs_params
      params.require('song').permit(:name, :explicity_id, :gender_id, :album_id)
    end
end