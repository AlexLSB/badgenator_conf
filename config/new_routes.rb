Badgenator::Application.routes.draw do


    	
  match '/contacts' => 'welcome#contacts', :as => :contacts # �������� ���������
resources :badge_sets :as 'archive' do
   resources :photos
  end
end

 
  root :to => 'welcome#index'
end
