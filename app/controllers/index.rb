get '/' do
  # La siguiente linea hace render de la vista 
  # que esta en app/views/index.erb
  @photos = Photo.all
  erb :index
end

post '/upload' do
  @photo = Photo.new(params[:photo])
  if @photo.save
  	 @falla = false
    redirect to ('/')
  else
  	@photos = Photo.all
  	@falla = true
  	erb :index
  end
end