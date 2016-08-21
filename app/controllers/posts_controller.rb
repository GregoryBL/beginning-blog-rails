class PostsController < ActionController::Base
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def show
    @post = Post.find(params[:id])
  end

  def create
    @post = Post.new(user_params)
    if new_post.save
      redirect_to @post
    else
      render new_post_path
    end
  end

  def update
    @post = Post.find(params[:id])
    if @post.update(user_params)
      redirect_to @post
    else
      render edit_post_path
    end
  end

  def edit
    @post = Post.find(params[:id])
  end

  def destroy
    Post.find(params[:id]).destroy
    redirect_to posts_path
  end

  private

  def user_params
    params.require(:post).permit(:title, :content, :published)
  end
end