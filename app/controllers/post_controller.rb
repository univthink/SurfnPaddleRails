class PostController < ApplicationController

  def index
    #most recent posts
    # @posts
    # @all-posts
    render template: "layouts/application"



  end

  def show
    render template: "layouts/application1"
end
end
