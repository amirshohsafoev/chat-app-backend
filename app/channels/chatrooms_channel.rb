class ChatroomsChannel < ApplicationCable::Channel
  def subscribed
    # byebug
    stream_from "chatroom_#{params[:message_id]}"
  end

end
