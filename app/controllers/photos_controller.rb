class PhotosController < ApplicationController

  def new
    @album = Album.find params[:album_id]
    @photo = Photo.new
  end

  def create
    @album = Album.find params[:album_id]

    @photo = @album.photos.build(photo_params)

    if @photo.save
      redirect_to album_photos_path(@album, @photo), notice: 'Photo Added'
    else
      render :new
    end
  end

  def edit
  end

  def index
    
    @album = Album.find params[:album_id]
    @photos = Photo.all

      #@photos = @album.photos.find(params[:format])

     #binding.pry



  end

private
  def photo_params
    params.require(:photo).permit(:caption, :description, :photo)
  end

end
