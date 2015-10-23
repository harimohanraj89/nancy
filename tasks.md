# Rack

## How does Rack work?

* What kind of objects can you pass to Rack?
* What's the significance of the `call` method?

## What is the `env` variable that is passed into `call`?

* Run Nancy with `ruby nancy.rb`
* Visit `localhost:9292/hello` in your browser
* Hit the `binding.pry` and find out what `env` is
* Exit out of the `binding.pry` and your browser should load the page correctly

## What is a Rack Request?

* Visit `localhost:9292/hello` again
* Run `request = Rack::Request.new(env)`
* What the hell is `request`?
* Run `request.instance_methods` to gain insight

## What is the `call` method supposed to return?

* Take a look at the return values, specifically their structure. What are we
  adhering to here?

# Sinatra

Clone Sinatra with `git clone git@github.com:sinatra/sinatra.git`

How does Sinatra differ from Nancy? Let's look at `base.rb` in the Sinatra
source code.

* What are the classes defined inside Base, and what purpose do each of them
  serve?
* How is the `route` method different in Sinatra
* How does Sinatra incorporate ERB?
* What other bells and whistles did you find?

Let's split up and research these things. Dive as deep into whatever aspect you
find fascinating. Let's regroup in 30 min to discuss what we find, and then...
play it by ear?

Possible ideas for extra time - Let's pair program on beefing up Nancy as much
as we can to emulate the awesome feature of Sinatra that we love! We can decide
what features we want to emulate based on our previous research section!
