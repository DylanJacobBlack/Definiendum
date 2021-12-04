class LessonsController < ApplicationController
  before_action :set_lesson, only: %i[show destroy edit update]

  def index
    @lessons = policy_scope(Lesson)
  end

  def new
    @lesson = Lesson.new
    authorize @lesson
  end

  def create
    @lesson = Lesson.new(lesson_params)
    authorize @lesson
    @lesson.language_id = 1
    @less.user_id = current_user.id

    if @lesson.save
      redirect_to lesson_path(@lesson)
    else
      # redirect_to lists_path
      puts "############### ERROR #{@lesson.errors.full_messages}"
      render 'new'
    end
  end

  private

  def lesson_params
    params.require(:lesson).permit(:title, :difficulty_level, :text)
  end

  def set_lesson
    @lesson = Lesson.find(params[:id])
    authorize @lesson
  end
end
