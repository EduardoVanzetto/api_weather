Rails.application.routes.draw do


  get 'temperatura/buscar_agora'

  get 'horas/buscar_horas'

  get 'dias/buscar_dias'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
