class PostsController < ApplicationController

  before_action :authenticate_user!

  before_action :set_post, only: [:show, :edit, :update, :destroy]

  def index
    @posts = Post.page(params[:page]).per(12)
  end

  def show
  end

  def new
    @post = Post.new
    @user = current_user
  end

  def create
    @post = Post.new(post_params)
    @post.user_id = current_user.id
  
    if @post.save
      redirect_to feed_path
    else
      render :new
    end
  end

  def edit
    if current_user.id != @post.user_id
      flash[:danger] = "You are not authorized to edit this post."
    end
  end

  def update
    if current_user.id == @post.user_id
      if @post.update(post_params)
      else
        render :edit
      end
    end
      redirect_to feed_path
  end

  def destroy
    if current_user.id == @post.user_id
      @post.destroy
      redirect_to feed_path
      else
      flash[:danger] = "You are not authorized to delete this project."
      redirect_to feed_path
    end
  end

  def feed
    @posts = Post.page(params[:page]).per(12)
  end

  private
  
    def post_params
        params.require(:post).permit(:content, :share_with, :user_id, :image)
    end

    def set_post
      @post = Post.find(params[:id])
    end



end
