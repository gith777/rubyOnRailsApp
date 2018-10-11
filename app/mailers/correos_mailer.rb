class CorreosMailer < ApplicationMailer

  def notificacion(tarea)
  @tarea = tarea

    mail to: "yefersson.do@gmail.com",
    	subject: "Tarea nueva"	
  end
end
