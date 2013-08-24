require "rack"

class Application
  def call(env)
    [200, {}, ["Hello Rack"]]
  end
end

app = Application.new

Rack::Server.start app: app, Port: 6969

