Badgenator::Application.routes.draw do
    	
  match '/contacts' => 'welcome#contacts', :as => :contacts # �������� ���������
  get '/archive' => 'badge_sets#index' # ������ ��������� �����
  post '/archive' => 'badge_sets#create' # ������ ��������� �����
  match '/archive/:id/edit' => 'badge_sets#edit'
  match '/archive/new', :to => 'badge_sets#new'
  delete '/archive/:id' => 'badge_sets#destroy'
  put '/archive/:id' => 'badge_sets#update'
  match '/archive/page/:PAGE_ID', :to => 'badge_sets#index', :page => :PAGE_ID

 
  root :to => 'welcome#index'
end
