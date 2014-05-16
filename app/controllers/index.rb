# Home
get '/' do
  # Look in app/views/index.erb
  redirect '/notes'
end

# Create new note
get '/notes/new' do

  erb :"notes/new"
end

post '/notes/new' do
  Note.create(params)
  redirect '/notes'
end

# Read note
get '/notes/:id' do
  @note = Note.find(params[:id])
  erb :"notes/show"
end

# Read all notes
get '/notes' do
  @notes = Note.all
  erb :"notes/index"
end

# Update note
get '/notes/:id/edit' do
  @note = Note.find(params[:id])
  erb :"notes/edit"
end

post '/notes/:id/edit' do

  redirect '/notes'
end

# Destroy note
get '/notes/:id/delete' do
  Note.find(params[:id]).destroy
  redirect '/notes'
end