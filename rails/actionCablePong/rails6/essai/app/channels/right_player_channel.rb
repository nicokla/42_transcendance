class RightPlayerChannel < ApplicationCable::Channel
  def subscribed
    stream_from "RightPlayer" # right player will speak to here
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
	end
	
	# we send infos to the other player
	def sendInfos(data)
		$redis.with do |conn|
      conn.set("right:", data["y"])
    end
		ActionCable.server.broadcast("LeftPlayer", data)
	end
end
