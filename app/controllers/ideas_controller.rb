class IdeasController < ApplicationController

  def new
  end

  def index
    @ideas = Idea.all
  end

  def create
    @idea = Idea.new(params.require(:idea).permit(:author, :description))
    @idea.save!
  end

  def show
    @idea_by_id = Idea.find(params[:id])
  end

  def destroy
    @id = params[:id]
    Idea.find(@id).destroy!
  end

end
