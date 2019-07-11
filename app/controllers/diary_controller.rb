class DiaryController < ApplicationController
  
  def index
    @diaries = Diary.all.order('created_at DESC').page(params[:page]).per(5)
  end

  def new
    @diary = Diary.new
  end

  def show
    @diary = Diary.find(params[:id])
  end

  def create
    Diary.create(diary_param)
    redirect_to action: :index
  end

  def destroy
    @diary = Diary.find_by(id: params[:id])
    @diary.destroy
  end

  def edit
    @diary = Diary.find(params[:id])
  end

  def update
    @diary = Diary.find(params[:id])
    @diary.update(diary_param)
    redirect_to action: :index
  end

  private 
  def diary_param
    params.require(:diary).permit(:text).merge(user_id: current_user.id)
  end

end
