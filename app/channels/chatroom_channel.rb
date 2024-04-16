class ChatroomChannel < ApplicationCable::Channel
  def subscribed
    stream_from "chatroomid"
  end

  def receive(data)
    ActionCable.server.broadcast("chatroomid", data)
  end
end
