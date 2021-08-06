 
class AlbumsController < ApplicationController
    include AlbumsHelper
  
    def index
      @albums = Album.all
    end
  
    def create
      album = Album.new(albums_params)
      begin
        album.save!
        flash[:notice] = "Album #{album.album_name} criado com sucesso"
        redirect_to albums_path
      rescue => err
        flash[:notice] = err
        redirect_to new_album_path
      end
    end
  
    def new
      @album = Album.new
    end
  
    def edit
      @album = Album.find(params[:id])
    end
  
    def show
      @album = Album.find(params[:id])
    end
  
    def update
      album = Album.find(params[:id])
      begin
        album.update!(albums_params)
        flash[:notice] = "Album #{album.album_name} alterado com sucesso"
        redirect_to album_path
      rescue => err
        flash[:notice] = err
        redirect_to edit_album_path
      end
    end
  
    def destroy
        album = Album.find(params[:id])
      begin
        album.destroy!
        flash[:notice] = "Album #{album.album_name} apagado com sucesso"
      rescue
        flash[:notice] = "Ocorreu um erro"
      ensure
        redirect_to albums_path
      end
    end
  
    private
    def albums_params
      params.require('album').permit(:album_name, :artist)
    end
  
end