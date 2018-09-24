class LojasController < ApplicationController
  skip_before_action :authenticate_user!
  def new
        @loja = Loja.new
  end

  def index
        @lojas = Loja.where.not(latitude: nil, longitude: nil)

    @markers = @lojas.map do |loja|
      {
        lat: loja.latitude,
        lng: loja.longitude
        # infoWindow: { content: render_to_string(partial: "/lojas/map_box", locals: { loja: loja }) }
      }
    end
  end

  def show
  end


  def loja_params
    params.require(:loja).permit(:description, :address)
  end
end

