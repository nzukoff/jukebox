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

end