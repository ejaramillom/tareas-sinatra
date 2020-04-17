require 'sinatra'
require 'make_todo'

get '/' do
	@tareas = Tarea.all
	erb :index
end

post '/' do
	@crear_tarea = Tarea.create(params[:crear_tarea])
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
