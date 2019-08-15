class DiariesController < ApplicationController
  before_action :move_to_index, except: :index
  def index
    @diary = Bookblog.all.order("id DESC")
  end

  def new
        
  end

  def create
    Bookblog.create(title: params[:title], image: params[:image], content: params[:content], user_id: current_user.id)
  end

  def destroy
    diary = Bookblog.find(params[:id])
    diary.destroy if bookblogs.user_id === current_user.id
  end

  def edit
    @diary = Bookblog.find(params[:id])
  end

  def update
    diary = Bookblog.find(params[:id])
    diary.update(diary_params) if diary.user_id == current_user.id
  end
  
  private
  def diary_params
    params.permit(:title, :image, :content)
  end

  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end
end
