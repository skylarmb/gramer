class ResultController < ApplicationController

  def index
    @results = Result.all
  end

  def show
    @result = Result.where(uuid: params[:uuid]).first
    redirect_to action: :index unless @result
  end

  def create
    text = params[:input_text]
    parser = Gingerice::Parser.new
    @result = parser.parse text
    @result = Result.new(content: @result)
    @result.save!
    @result.reload
    redirect_to result_path(@result.uuid)
  end

end
