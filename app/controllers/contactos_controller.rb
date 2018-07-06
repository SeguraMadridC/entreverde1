class ContactosController < ApplicationController
  def new
    @contacto = Contacto.new
  end
  
  def create
    @contacto = Contacto.new(contacto_params)
    if @contacto.save
      flash[:succes] = "Good Job!"
      redirect_to new_contacto_path
    else
      flash[:danger] = @contacto.errors.full_messages.join(". ")
      redirect_to new_contacto_path 
    end
  end
    
    private
      def contacto_params
        params.require(:contacto).permit(:nombre, :correo, :comentario)
      end
  
end
