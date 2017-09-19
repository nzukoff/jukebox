class AlbumsController < ApplicationController
    def index
        @albums = Album.all
    end

    def new
        @album = Album.new
    end

    def show
        @album = Album.find(params[:id])
    end

    def create
        name = params[:album][:name]
        Album.create({name: name})
        redirect_to albums_path
    end

    def destroy
        Album.find(params[:id]).destroy
        redirect_to albums_path
    end
end