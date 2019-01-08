class StoriesController < ApplicationController

  def index
    @stories = Story.includes :comments
  end

  def new
    @story = Story.new
    3.times do
      comment = @story.comments.build
    end
  end

  def create
    @story = Story.new story_params
    if @story.save
      flash[:success] = "word_created_success"
      redirect_to root_path
    else
      @story = Story.new
      render :new
    end
  end

  private

  def story_params
    params.require(:story).permit :status,
      comments_attributes: [:id, :content, :_destroy]
  end

  def find_story
    @story= Story.find_by id: params[:id]
    unless @word
      flash[:danger] = "find_word_fail"
      redirect_to root_path
    end
  end
end
