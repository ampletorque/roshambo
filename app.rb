require('sinatra')
require('sinatra/reloader')
require('./lib/roshambo')
require('pry')


get('/') do
  erb(:form)
end

get('/results') do
  @results = params.fetch('sign').beats?(params.fetch('sign2'))
  erb(:results)
end
