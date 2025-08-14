class BookmarksController < ApplicationController
  def new
    @list = List.find(params[:list_id])
    @bookmark = Bookmark.new()
  end

  def create
  @bookmark = Bookmark.new(bookmark_params)
  @list = List.find(params[:list_id])
  @bookmark.list = @list
  if @bookmark.save
    redirect_to list_path(@list), notice: "Bookmark added!"
  else
    render :new, status: :unprocessable_entity
  end
  end

  def edit
  end
  def update
  end

  private
  def bookmark_params
    params.require(:bookmark).permit(:comment, :movie_id)
  end
end
