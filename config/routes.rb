Rails.application.routes.draw do

  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/publications', to: 'pages#publications'
  get '/projects', to: 'pages#projects'
  get '/source-code', to: 'pages#source-code', as: 'source-code'
  get '/resume', to: 'pages#resume'
  get '/contact', to: 'pages#contact'

  resources :messages, only: [:create, :new]



end
