class PostsController < ApplicationController
  
  def index
    @posts = Post.all
  end

  def new
    @posts = Post.new
  end

  def create
    posts = Post.new(posts_params)
    if posts.save!
      redirect_to :action => "index"
    else
      redirect_to :action => "new"
    end
  end

  def show
    @post = Post.find(params[:id])
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    post = Post.find(params[:id])
    if post.update(post_params)
      redirect_to :action => "show", :id => post.id
    else
      redirect_to :action => "new"
    end
  end

  def destroy
    post = Post.find(params[:id])
    post.destroy
    redirect_to action: :index
  end

  private
  def posts_params
    params.require(:post).permit(:name, :genre, :address, :about, :image, :youtube_url)
  end
end
