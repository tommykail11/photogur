class PicturesController < ApplicationController# NOT;
  ActionController::Base

  before_filter :load_pictures

  def index
  
  end

  def show
    @picture = @pictures[params[:id].to_i]
  end

  def new

  end

  def create
    #render :text => "Saving a picture. Url: #{params[:url]}, Title: #{:title}", Artist: #{:artist}"
    #redirect_to 
  end

  def show2
    @picture = @picture[1]
  end

  def load_pictures
    @pictures = [
      {
      :title => "The old church on the coast of White Sea",
      :artist => "Sergey Ershov",
      :url => "http://monicao.s3.amazonaws.com/bitmaker/house.jpg"
      },
      {
      :title => "Sea Power",
      :artist => "Stephen Scullion",
      :url => "http://monicao.s3.amazonaws.com/bitmaker/wave.jpg"
      },
      {
      :title => "Into the Poppies",
      :artist => "John Wilhelm",
      :url => "http://monicao.s3.amazonaws.com/bitmaker/girl.jpg"
     }
    ]
  end
end