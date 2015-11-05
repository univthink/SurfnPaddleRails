class PostsController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.


  def index
    @post = Post.all
    render template: "post/post"
  end

  def show
    @post = Post.find(params[:id])
    render template: "post/post"
    @post.save
  end

  def new
    @post = Post.new
    render template: "post/new"
    @check = [1]
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to home_path
    else
      render :new
    end
  end

  def edit
    @post = Post.find(params[:id])
    render template: "post/new"
    @post.save
  end

  def update
    @post = Post.find(params[:id])
    if @post.update(post_params)
      redirect_to @post
    else
      render template: "post/new"
    end
    @post.save
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    Post.all
    redirect_to home_path
    @post.save
  end
  def all
    @posts = Post.all
    render template: "post/all"
  end

  private

  def post_params
    params.require(:post).permit(:title, :body)
  end


end
