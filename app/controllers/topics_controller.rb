class TopicsController < ApplicationController
  def index
    @topics = Topic.all
  end
  
  def new
    @topic = Topic.new
  end
  
  def create
    @topic = current_user.topics.new(topic_params)

    if @topic.save
      redirect_to topics_path, success: '投稿に成功しました'
    else
      flash.now[:danger] = "投稿に失敗しました"
      render :new
    end
  end
  
  def edit
    @topic = find_topic_by_id
  end
  
  def update
    @topic = find_topic_by_id
    @topic.update(topic_params)
    redirect_to topics_path
  end

  private
  def topic_params
    params.require(:topic).permit(:date, :brand, :item, :size, :price, :description, :image)
  end
  
  def find_topic_by_id
    Topic.find(params[:id])
  end
  
end
