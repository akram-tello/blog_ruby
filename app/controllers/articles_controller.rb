class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new
    @article.title = params[:article][:title]
    @article.body=params[:article][:body]
    @article.save
    redirect_to article_path(@article)
  end

  def destroy
    @article = Article.find.(perms[:id])
    @comment.destroy
    redirect_to root_path
  end

  

  #private

  #def article_params
  # params.require(:article).permit(:title, :body)
  #end

end
