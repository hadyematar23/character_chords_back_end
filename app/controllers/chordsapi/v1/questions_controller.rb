class Chordsapi::V1::QuestionsController < ApplicationController
  def index 
    @theme = Theme.find(params[:theme_id])
    render json: QuestionSerializer.new(@theme.questions).serialize_all_questions 
  end
end
