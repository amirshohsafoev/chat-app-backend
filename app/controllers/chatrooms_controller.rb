class ChatroomsController < ApplicationController

  def index
  @chatrooms = Chatroom.all
  render json: @chatrooms
  end
  def show
    # byebug
    @chatroom = Chatroom.find(params[:id])
    render json: @chatroom
  end
  def create
    @chatroom = Chatroom.new
  end
  def destroy
  end
  private
  def chatroom_params
    params.require(:chatroom).permit(:topic, :id)
  end
end
