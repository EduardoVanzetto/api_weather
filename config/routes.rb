Rails.application.routes.draw do


  get 'temperatura/buscar_agora'

  get 'temperatura/buscar_horas'

  get 'temperatura/buscar_dias'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
