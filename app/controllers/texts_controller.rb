class TextsController < ApplicationController
  before_action :set_text, only: [:show, :edit, :update, :destroy]

  def index
    @nickname = current_user.nickname
    @texts = current_user.texts
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

  def destroy
    @text.destroy
    redirect_to root_path
  end

  def edit

  end

  def update
    @text.update(text_params)
    redirect_to root_path
  end

  def show
   
  end

  def search
    @texts = Text.search(params[:keyword])
    @keyword = params[:keyword]
  end

  private
  def text_params
    params.require(:text).permit(:sentence, :translate, :remarks, :tag, :type_id).merge(user_id: current_user.id)
  end

  def set_text
    @text = Text.find(params[:id])
  end


 
end
