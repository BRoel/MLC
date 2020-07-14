class MoviesController < ApplicationController
  def create
    @list = List.find(params[:list_id]) # finding the parent
    @movie = @list.movies.build(movie_params)
    if @movie.save
      redirect_to list_path(@list)
    else
      render "lists/show"
    end
  end

  def show
    @movie = Movie

  end


  # PATCH - /lists/:list_id/movies/:id
  def update
    @movie = movie.find(params[:id])
    @movie.update(movie_params)

    redirect_to list_path(@movie.list)
  end

  def destroy
    @movie = movie.find(params[:id])
    @movie.destroy
    redirect_to list_path(@movie.list)
  end

  private
    def movie_params
      params.require(:movie).permit(:description, :status)
    end

end