Rails.application.routes.draw do
  default_url_options :host => "apelatron.stage.data.org.uy"
  devise_for :users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "static_pages#home"
  get '/sobre-el-proyecto' => 'static_pages#about'
  get '/preguntas-frecuentes' => 'static_pages#faqs'
  get '/terminos-y-condiciones' => 'static_pages#terms'
  get '/otras-acciones' => 'static_pages#other_actions'
  #Steps
  get '/nueva-apelacion' => 'complaints#index'
  get '/paso/:step/:platform/:reason/:standard' => 'complaints#steps'
  get '/resultado-apelacion/:token' => 'complaints#feedback'
  get 'static_pages/test'

  resources :complaints
end
