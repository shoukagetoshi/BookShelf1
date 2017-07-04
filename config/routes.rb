Rails.application.routes.draw do
  root 'books#index'
  resources :books do
    get 'page/:page' , :action => :index, :on => :collection
  end
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
