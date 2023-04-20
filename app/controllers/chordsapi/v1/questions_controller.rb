class Chordsapi::V1::QuestionsController < ApplicationController
  def index
    begin
      @theme = Theme.find(params[:theme_id])
      render json: QuestionSerializer.new(@theme.questions).serialize_all_questions
    rescue ActiveRecord::RecordNotFound
      render json: { error: "Theme not found" }, status: 404
    end
  end
end

