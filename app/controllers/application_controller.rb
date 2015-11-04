class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.


  def show
    @posts = Post.all
    @post1 = Post.find(params[:id].to_i)
    render template: "post/post"
  end
  def allPosts
    @posts = Post.all
    @post1 = @posts[-1]
    render template: "layouts/application"
   end
end
