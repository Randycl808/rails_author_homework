class Api::AuthorsController < ApplicationController
  before_action :set_author, only: [:show,:update,:destroy]
  def index
      render json: Author.all
  end

  def create 
    author = Author.new(author_data)
    if(author.save)
      render json: author

    else
      render json: {errors: author.errors.full_messages}, status:422
    end

  end

  def update 
    if(@author.update(author_data))
      render json: @author

    else
      render json: {errors: @author.errors.full_messages}, status:422
    end

  end

  def show 
    render json: @author
  end
  def destroy
    render json: @author.destroy
  end 






  private
  def author_data
   params.require(:author).permit(:name, :age)
end
def set_author
  puts'set_author CALLED---------------------------'
  @author = Author.find(params[:id])
end
end
