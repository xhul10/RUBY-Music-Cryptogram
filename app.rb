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

get('/decode') do
  @result = params.fetch('textInput_two').music_decryption()
  erb(:audiomancy_output_two)
end
