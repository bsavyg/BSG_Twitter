Rails.application.routes.draw do
	get 'user_profile' => 'epiceneter#show_user'

	get 'js_practice' => 'epicenter#js_practice'
	
	post 'now_following' => 'epicenter#now_following'
	
	post 'unfollow' => 'epicenter#unfollow'

  resources :tweets
  devise_for :users

  root 'epicenter#feed'

    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
