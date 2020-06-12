class PostsController < ApplicationController
  def create
  	@topic = Topic.find(params[:topic_id])
  	@post = @topic.posts.new(post_params)
  	@post.user_id = current_user.id
  	if @post.save
  		redirect_to topic_path(@topic)
  	else
  	  	@topic = Topic.find(params[:id])
  		@post = Post.new
  		@posts = @topic.posts
  		render '/topics/show'
  	end

  end

  def destroy
  	@post = Post.find(params[:id])
  	if @post.user != current_user
      	redirect_to request.referer
    end
  	@post.destroy
  	redirect_back(fallback_location: root_path)
  end

	private
	def post_params
		params.require(:post).permit(:comment, :topic_id, :user_id, :handle_name)
	end
end
