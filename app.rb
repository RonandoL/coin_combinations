require('sinatra')
require('sinatra/reloader')
require('./lib/coin_combinations')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/results') do  # user goes to this URL
  @word = params.fetch('word')
  @word_b = @word.reverse
  @word_p = @word.palindromes  # data from form fields
  erb(:results_file)  # this is the filename
end
