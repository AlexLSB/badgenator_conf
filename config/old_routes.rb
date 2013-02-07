Badgenator::Application.routes.draw do
    	
  match '/contacts' => 'welcome#contacts', :as => :contacts # Страница контактов
  get '/archive' => 'badge_sets#index' # Список имеющихся сетов
  post '/archive' => 'badge_sets#create' # Список имеющихся сетов
  match '/archive/:id/edit' => 'badge_sets#edit'
  match '/archive/new', :to => 'badge_sets#new'
  delete '/archive/:id' => 'badge_sets#destroy'
  put '/archive/:id' => 'badge_sets#update'
  match '/archive/page/:PAGE_ID', :to => 'badge_sets#index', :page => :PAGE_ID

 
  root :to => 'welcome#index'
end
