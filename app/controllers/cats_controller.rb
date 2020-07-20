class CatsController < ApplicationController

    def index
        @cats = Cat.all 
        render :index
    end

    def show
        @cat = Cat.find(params[:id])
        render :show
    end    

    def new
        @cat = Cat.new
        render :new
    end

    def create
        cat = Cat.create(cats_params)
        redirect_to cat_path(cat)
    end    
    
    def edit
        @cat = Cat.find(params[:id])
    end

    def update
        @cat = Cat.find(params[:id])
        @cat.update(cats_params)
        redirect_to cat_path(@cat)
    end

    def destroy
        @cat = Cat.find(params[:id])
        @cat.destroy
        redirect_to cats_path
    end

    private

    def cats_params
        params.require(:cat).permit(:name, :breed, :age, :img_url)
    end    
end
