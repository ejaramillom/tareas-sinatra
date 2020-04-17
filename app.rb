require 'sinatra'
require 'make_todo'

get '/' do
	@tareas = Tarea.all
	erb :index
end

post '/' do
	@nueva_tarea = Tarea.create(params[:nueva_tarea])
	redirect '/'
end

get '/update/:id' do
	Tarea.update(params[:id])
	redirect '/'
end

get '/delete/:id' do
	Tarea.destroy(params[:id])
	redirect '/'
end
