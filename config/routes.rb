Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "static_pages#home"
  get '/sobre-el-proyecto' => 'static_pages#about'
  get '/nueva-apelacion' => 'complaints#index'
  get '/preguntas-frecuentes' => 'static_pages#faqs'

  resources :complaints
end
