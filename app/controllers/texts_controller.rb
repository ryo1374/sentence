class TextsController < ApplicationController
  def index
    @texts = Text.order("created_at DESC")
    @text = Text.new
  end

  def new
    @text = Text.new
  end

  def create
    @text = Text.create(text_params)
    if @text.save
      redirect_to root_path
    else
      render :new
    end
  end

  private
  def text_params
    params.require(:text).permit(:sentence, :translate, :remarks, :tag, :type_id).merge(user_id: current_user.id)
  end
end
