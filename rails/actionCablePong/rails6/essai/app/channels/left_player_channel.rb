class LeftPlayerChannel < ApplicationCable::Channel
	# the left channel is the channel which you need to send stuff to 
	# that left will want to listen
	# also the left player send stuff from here, to the other listening channel
	# (that is the right channel).
  def subscribed
		stream_from "LeftPlayer"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
	end
	
	def sendInfos(data)
		$redis.with do |conn|
      conn.set("left:", data["y"])
    end
		ActionCable.server.broadcast("RightPlayer", data)
	end
end
