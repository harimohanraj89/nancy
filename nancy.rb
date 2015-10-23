require 'pry'
require 'rack'

module Nancy
  class Base
    attr_reader :routes

    def initialize
      @routes = {}
    end

    def get(path, &handler)
      route('GET', path, &handler)
    end

    def call(env)
      #######################
      # STOP TIME!
      #######################
      binding.pry

      @request = Rack::Request.new(env)
      verb = @request.request_method
      path = @request.path_info

      if handler = @routes[verb][path]
        handler.call
      else
        [404, {}, ["Sorry, not found. Try adding route for #{verb} '#{path}'."]]
      end
    end

    private
    def route(verb, path, &handler)
      @routes[verb] ||= {}
      @routes[verb][path] = handler
    end
  end
end

nancy = Nancy::Base.new

nancy.get('/hello') do
  [200, {}, ['Nancy says hi']]
end

Rack::Handler::WEBrick.run nancy, Port: 9292
