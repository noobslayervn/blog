class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def show
    @articles = Article.find(params[:id])
    @articles =  Article.find(1)
  end
  def new
    @articles = Article.new
  end

  def create
    @articles = Article.new(title: "...", body: "...")


    if @articles.save
      redirect_to @articles
    else
      render :index
    end
  end
end
