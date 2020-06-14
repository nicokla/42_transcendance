class PongJob < ApplicationJob
  queue_as :default

  def perform(game)
    next_hit = nil
    while game.playing?
      b = Ball.new(game, next_hit)
      b.serve
      next_hit = b.next_hit
    end
    $redis.with do |conn|
      conn.del("left:")
    end
    $redis.with do |conn|
      conn.del("right:")
    end
  end
end
