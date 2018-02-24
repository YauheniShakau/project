Rails.application.routes.draw do
  post '/rate' => 'rater#create', :as => 'rate'
	resources :comments

	devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
	
	resources :posts do
		resources :comments
	end
	
	root to: "posts#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
