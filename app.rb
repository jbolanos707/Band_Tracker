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

post('/bands/:id') do
  band_id = params.fetch('id').to_i
  band_name = params.fetch('name')
  new_venue = Venue.create(name: name)
  band = Band.find(band_id)
  band.venues().push(new_venue)

  redirect('/bands/'.concat(band_id.to_s))
end

delete('/bands/:id') do
  band_id = params.fetch('id').to_i
  band = Band.find(band_id)
  band.destroy

  redirect('/bands')
end

get('/venues') do
  @venues = Venue.all
  erb(:venues)
end
