class ContactosController < ApplicationController
  def new
    @contacto = Contacto.new
  end
  
  def create
    @contacto = Contacto.new(contacto_params)
    if @contacto.save
      redirect_to root_path
    else
      flash[:danger] = @contact.errors.full_messages.join(". ")
      redirect_to root_path 
    end
  end
    
    private
      def contacto_params
        params.require(:contacto).permit(:nombre, :correo, :comentario)
      end
  
end
