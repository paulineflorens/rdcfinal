class ArticlesController < ApplicationController
  def index
    if params[:query].blank?
      @articles = Article.all
    else
      @articles = Article.joins(:brands).where("brand.name ILIKE ?", "%#{params[:query]}%")
      brands = Brand.where("name ILIKE ?", "%#{params[:query]}%")
      @articles = brands.first.articles
    end
  end
end
