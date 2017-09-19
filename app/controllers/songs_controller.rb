class SongsController < ApplicationController

    def new
        @album = Album.find(params[:album_id])
        @song = Song.new
    end

    def create
        name = params[:song][:name]
        Song.create({name: name, album_id: params[:album_id]})
        redirect_to album_path(params[:album_id])
    end

    def destroy
        Song.find(params[:id]).destroy
        redirect_to album_path(params[:album_id])
    end

end