class StaticPagesController < ApplicationController

  def home
    #render html: "it's home page"
    if logged_in?
      @micropost  = current_user.microposts.build
      @feed_items = current_user.feed.paginate(page: params[:page])
    end

  end

  def help
    #render html: "it's help page"
  end

  def about
    #render html: ""
  end

  def log_in

  end

  def contact

  end

end
