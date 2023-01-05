module Admin
  class AuthorsController < ApplicationController
    def index
      @admin_authors = Author.all
      # redirect_to @admin_authors
      respond_to do |format|
        # format.json { show_json }
        format.html
      end
    end
    def show
      @author = Author.find(params[:id])
    end
    def new
      @author = Author.new
    end
  
    def create
      # @author = Author.new(name: "...", desc: "...")
  
      @author = Author.create!(authors_params)
      if @author.save
        redirect_to @author
      else
        render :new, status: :unprocessable_entity
      end
    end
  
    def edit
      @author = Author.find(params[:id])
    end
  
    def update
      @author = Author.find(params[:id])
  
      if @author.update(author_params)
      redirect_to @author
      else
        render :edit, status: :unprocessable_entity
      end
    end

    def destroy
      @author = Author.find(params[:id])
      @author.destroy

      redirect_to root_path, status: :see_other
    end
    def display 
    end


    private
    def author_params
      params.require(:author).permit(:name, :desc)
    end
    def authors_params
      params.require(:author).permit(:name, :desc, :price)
    end
  end
end