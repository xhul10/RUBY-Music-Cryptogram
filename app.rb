require('sinatra')
require('sinatra/reloader')
require('./lib/audiomancy')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/encode') do
  @result = params.fetch('textInput').music_encryption()
  erb(:audiomancy_output)
end
