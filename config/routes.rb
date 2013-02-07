Badgenator::Application.routes.draw do   

	match '/contacts' => 'welcome#contacts', :as => :contacts # Страница контактов
	resources :badge_sets, :path => "archive" do 
	  resources :badges 
	end
	get '/archive/page/:page' => 'badge_sets#index'
	get '/archive/:badge_set_id/badges/page/:page' => 'badges#index'

  root :to => 'welcome#index'
end
