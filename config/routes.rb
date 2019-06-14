Rails.application.routes.draw do

  root 'welcome#index'

  get 'temperatura/buscar'

  get 'horas/buscar'

  get 'dias/buscar'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
