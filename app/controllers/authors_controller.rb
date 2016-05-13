class AuthorsController < ApplicationController
  def index
    @authors = Authors.all
  end

  def new
    @author = Authors.new
  end

  def show
    @author = Author.find(params[:id])
  end

  def edit
    @author = Author.find(params[:id])
  end

  def update
    @author = Author.find(params[:id])
    @author.update(author_params)
    redirect_to action: "show", id: @author.id
  end

  def create
    @author = Author.create(author)
    redirect_to action: "show", id: @author.id

  end

  def destroy
    @author = Author.find(params[:id]).destroy
    redirect_to action: "index"
  end


  private

  def author_params
    params.require(:author).permit(:name, :bio)
  end
end
