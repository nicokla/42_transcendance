class PongChannel < ApplicationCable::Channel
  def subscribed
    stream_from "pong_channel"
  end
end
