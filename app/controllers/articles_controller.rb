class ArticlesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:articles, :new, :edit, :update, :create, :destroy]

  def articles
    @articles = Article.all
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    if @article.save
      redirect_to articles_path
    else
      render :new
    end
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])
    if @article.update(article_params)
      redirect_to articles_path
    else
      render :edit
    end
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy
    redirect_to articles_path
  end

  private

    def article_params
     params.require(:article).permit(:title, :subtitle, paragraphs_attributes: [:id, :content, :_destroy])
    end
end
