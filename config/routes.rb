Rails.application.routes.draw do
  resources :places do 
  	resources :reviews, except: [:index, :show]
  	collection do 
  		get 'search'
  	end
  end
  
  devise_for :users
  root 'places#index'
end
