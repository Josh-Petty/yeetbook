class PostsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def create
    @post = Post.create(content: params[:content], user_id: params[:user_id])

    render '/posts/create.jbuilder'
  end

  def show
    @post = Post.all

    render 'posts/show.jbuilder'
  end
end
