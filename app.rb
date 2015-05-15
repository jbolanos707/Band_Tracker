require('bundler/setup')
Bundler.require(:default)
require('pry')
also_reload('./lib/**/*.rb')
Dir[File.dirname(__FILE__) + '/lib/*.rb'].each { |file| require file }

get('/') do
  erb(:index)
end

get('/bands') do
  @bands = Band.all
  erb(:bands)
end

post('/bands') do
  name = params.fetch('name')
  new_band = Band.new(name: name)
  if new_band.save()
    redirect('/bands')
  else
    erb(:error)
  end
end

get('/bands/:id') do
  id = params.fetch('id').to_i
  @band = Band.find(id)
  @venues = @band.venues()
  erb(:band)
end
