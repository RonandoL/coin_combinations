require('sinatra')
require('sinatra/reloader')
require('./lib/coin_combinations')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/results') do  # user goes to this URL
  @cents = params.fetch('total_cents').to_i.coin_combinations
  erb(:results_file)  # this is the filename
end
