class ArticlesController < ApplicationController
	before_action :set_article, only: [:edit,:show, :destroy]
  def index
  	@articles = Article.all
  end

  def new
  	@article = Article.new
  end

  def edit

  end

  def show

  end

  def create
  	@article = Article.new(article_params)
  	if @article.save
  		redirect_to articles_path
  	else
  		render :new
  	end
  end

  private

  def article_params
  	params.require(:article).permit!
  end

  def set_article
  	@article = Article.find(params[:id])
  end
end
