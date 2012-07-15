Unitedrv322::Application.routes.draw do
  resources :users
  resources :sessions, only: [:new, :create, :destroy]
  resources :questions
  resources :campers
  resources :attachments
  resources :searches
  resources :prospects
  resources :subscribers
  resources :specials

  root to: 'static_pages#home'
  
  match '/signup',  to: 'users#new'
  match '/signin',  to: 'sessions#new'
  match '/signout', to: 'sessions#destroy', via: :delete
  
  match '/about',   to: 'static_pages#about'
  match '/contact', to: 'static_pages#contact'
  match '/parts',   to: 'static_pages#parts'
  match '/service', to: 'static_pages#service'
  match '/news',    to: 'static_pages#news'
  match '/search',   to: 'searches#new'

  match '/a-class', to: 'campers#showcategory', :type => 1
  match '/a-class/*junk', to: 'campers#showcategory', :type => 1
  match '/b-class', to: 'campers#showcategory', :type => 2
  match '/b-class/*junk', to: 'campers#showcategory', :type => 2
  match '/c-class', to: 'campers#showcategory', :type => 3
  match '/c-class/*junk', to: 'campers#showcategory', :type => 3
  match '/travel-trailers', to: 'campers#showcategory', :type => 4
  match '/travel-trailers/*junk', to: 'campers#showcategory', :type => 4
  match '/fifth-wheel', to: 'campers#showcategory', :type => 5
  match '/fifth-wheel/*junk', to: 'campers#showcategory', :type => 5
  match '/toy-haulers', to: 'campers#showcategory', :type => 6
  match '/toy-haulers/*junk', to: 'campers#showcategory', :type => 6
  match '/folding-campers', to: 'campers#showcategory', :type => 7
  match '/folding-campers/*junk', to: 'campers#showcategory', :type => 7
  match '/truck-campers', to: 'campers#showcategory', :type => 8
  match '/truck-campers/*junk', to: 'campers#showcategory', :type => 8
  match '/park-model', to: 'campers#showcategory', :type => 9
  match '/park-model/*junk', to: 'campers#showcategory', :type => 9

  match '*path' => redirect('/')

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
