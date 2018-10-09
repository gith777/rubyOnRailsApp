class TareasController < ApplicationController

  before_action :authenticate_usuario!, except: [:index, :show]
  before_action :set_tarea, except: [:index, :new, :create] #esto es un callback y se va a ejecutar
  #en todos excepto lo que estan en los corchetes...

  def index
  	@tareas = Tarea.all
  	#select * from tareas 
  end

  def new
  	@tarea = Tarea.new
  end
  
  def create
  @tarea = Tarea.new(tarea_params)
  @tarea.usuario= current_usuario
  
  #insert into tareas(titulo, descripcion) values (formulario)  
  if @tarea.save
    redirect_to  @tarea #action show
    

  else render :new

  end

  end

  def show
    
    @comentario = Comentario.new
  	
  	#select * from tareas where id= :id
  end

  def destroy 
    
    @tarea.destroy
    redirect_to tareas_path
  end

  def edit
    
  end

  def update
    @tarea = Tarea.find(params[:id])

  if @tarea.update(tarea_params)
    redirect_to @tarea
  else 
    render :new  
  end

  end

private
  def set_tarea
    @tarea = Tarea.find(params[:id])

  end 

  def tarea_params
    params.require(:tarea).permit(:titulo,:descripcion) 
  end

end
