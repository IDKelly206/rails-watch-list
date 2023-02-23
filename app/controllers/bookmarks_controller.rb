class BookmarksController < ApplicationController

  def new
    set_list
    @bookmark = Bookmark.new
  end

  def create
    set_list
    @bookmark = Bookmark.new(bookmark_params)
    @bookmark.list = @list
    if @bookmark.save
      redirect_to list_path(@list)
    else
      render :new, status: :unprocessable_entity
    end
  end


  def destroy
    @bookmark = Bookmark.find(params[:id])
    @bookmark.destroy
    redirect_to list_path(@bookmark.list), status: :see_other
  end

  private

  def set_list
    @list = List.find(params[:list_id])
  end


  def bookmark_params
    params.require(:bookmark).permit(:comment, :movie_id)
  end

  # def list_params
  #   params.require(:id).permit(:content)
  # end

end
