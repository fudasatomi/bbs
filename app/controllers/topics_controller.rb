class TopicsController < ApplicationController

  def create
  	@topic = Topic.new(topic_params)
  	@topic.user_id = current_user.id
  	if @topic.save
  		redirect_to topic_path(@topic)
  	else
  		render :new
  	end
  end

  def index
  	@topic = Topic.new
  	@topics = Topic.all
  end

  def show
  	@topic = Topic.find(params[:id])
  	@post = Post.new
  	@posts = @topic.posts
  end

  def edit
  end

  def update
  end

  def destroy
  end


  private
		def topic_params
        	params.require(:topic).permit(:title,:contents, :user_id)
      	end
end