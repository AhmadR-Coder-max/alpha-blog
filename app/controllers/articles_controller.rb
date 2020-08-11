class ArticlesController < ApplicationController

  def index
    @articles = Article.all
  end

  def show
    # byebug
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def create
    # render plain: params[:article]
    @article = Article.new(params.require(:article).permit(:title, :description))
    # render plain: @article.inspect
    if @article.save
      flash[:notice] = "Article was created successfully."
      redirect_to @article
    else
      render 'new'
    end
  end

end
