class MoviesController < ApplicationController

  def initialize
    Tmdb::Api.key(Rails.application.credentials.dig(:T_KEY))
  end

  def search

    count = params[:title]

    if count == ""
      render html: "no existe"
    else
      @parp = Tmdb::Movie.find(count)
    end

  end
end
