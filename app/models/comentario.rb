class Comentario < ApplicationRecord
	validates :contenido, presence: true
  	belongs_to :usuario
  	belongs_to :tarea
end
