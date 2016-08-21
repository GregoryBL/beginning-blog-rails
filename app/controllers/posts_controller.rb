class PostsController < ActionController::Base
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def show
  end

  def create
  end

  def update
  end

  def edit
  end

  def destroy
  end

end