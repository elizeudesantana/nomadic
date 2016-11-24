class NewsController < ApplicationController
  def index
  	News.refresh
    @news = News.all.paginate(:page => params[:page], :per_page => 5)
  end
end
