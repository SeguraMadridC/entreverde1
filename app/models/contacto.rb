class Contacto < ActiveRecord::Base
  validates :nombre, presence: true
  validates :correo, presence: true
  validates :comentario, presence: true
end
