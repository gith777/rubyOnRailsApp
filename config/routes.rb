Rails.application.routes.draw do
 	get 'tareas/index'
  	get 'tareas/new'
  	post 'tareas/create'

	get 'bienvenido/index'

	root 'bienvenido#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
