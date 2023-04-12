class Chordsapi::V1::ThemesController < ApplicationController
  def index
    render json: ThemeSerializer.new(Theme.all).serialize_themes
  end
end
