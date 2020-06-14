require 'redis'
require 'connection_pool'

# $redis = Redis.new(host: 'localhost', port: 6379)

begin
  if Rails.env.production?
    uri = URI.parse(ENV["REDISTOGO_URL"])
    $redis = ConnectionPool.new(:size => 6, :timeout => 3) do
      Redis.new(:host => uri.host, :port => uri.port, :password => uri.password)
    end
  else
    $redis = ConnectionPool.new(:size => 6, :timeout => 3) do
      Redis.new(:host => 'localhost', :port => 6379)
    end
  end
rescue Exception => e
  Rails.logger.error e.backtrace
end
