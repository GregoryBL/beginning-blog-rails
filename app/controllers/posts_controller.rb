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
    new_post = Post.new(user_params)
    if new_post.save
      redirect_to posts_path
    else
      render new_post_path
    end
  end

  def update
  end

  def edit
  end

  def destroy
  end

  private

  def user_params
    params.require(:post).permit(:title, :content, :published)
  end
end