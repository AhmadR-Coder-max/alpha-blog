class ArticlesController < ApplicationController
  layout false

  def show
    # byebug
    @article = Article.find(params[:id])
  end

end
