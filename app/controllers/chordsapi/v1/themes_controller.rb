class Chordsapi::V1::ThemesController < ApplicationController
  # include S3Helper
    def index
      render json: ThemeSerializer.new(Theme.all).serialize_themes
    end
end
