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
    erb(:error_band)
  end
end

get('/bands/:id') do
  id = params.fetch('id').to_i
  @band = Band.find(id)
  @venues = Venue.all()
  erb(:band)
end

post('/bands/:id/venues') do
  band_id = params.fetch('id').to_i
  venue_ids = params.fetch('venue_ids')
  band = Band.find(band_id)
  venue_ids.each do |venue_id|
    venue = Venue.find(venue_id.to_i)
    band.venues().push(venue)
  end
  redirect('/bands/'.concat(band_id.to_s))
end


patch('/bands/:id') do
  band_id = params.fetch('id').to_i
  name = params.fetch('name')
  @band = Band.find(params.fetch('id').to_i())
  @band.update(name: name)
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

post('/venues') do
  name = params.fetch('name')
  new_venue = Venue.new(name: name)
  if new_venue.save()
    redirect('/venues')
  else
    erb(:error_venue)
  end
end

get('/venues/:id') do
  venue_id = params.fetch('id').to_i
  @venue = Venue.find(venue_id)
  erb(:venue)
end

post('/venues/:id/') do
  band_id = params.fetch('id').to_i
  venue_ids = params.fetch('venue_ids')
  venue = Venue.find(band_id)
  band_ids.each do |band_id|
    band = Band.find(venue_id.to_i)
    venue.bands().push(band)
  end
  redirect('/venues/'.concat(venue_id.to_s))
end
