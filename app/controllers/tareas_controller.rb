class TareasController < ApplicationController
  def index
  	@tareas = Tarea.all
  	#select * from tareas 
  end

  def new
  	@tarea = Tarea.new
  end
  
  def create
  end

end
