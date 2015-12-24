class HomeController < ApplicationController
  def index

    @articles = Article.where(:moderated => true)
    if params[:category].present? and params[:category].to_i > 0
      @articles = @articles.includes(:categories).where(categories: {id: params[:category].to_i})
    end

    @articles = @articles.order("created_at desc").paginate(:page => params[:page], :per_page => 30)
  end
end
