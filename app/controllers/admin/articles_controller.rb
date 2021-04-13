class Admin::ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
    @article =  Article.find(1)
  end
  def new
    @article = Article.new
  end

  def create
    @article = Article.new(title: "...", body: "...")


    if @article.save
      redirect_to @article
    else
      render :index
    end
  end
end
