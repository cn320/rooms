RoomManagement::Application.routes.draw do
  
  

  resources :welcomes


  resources :forms


  resources :tools


  resources :reserves


  get "staffs/reserve"

  resources :staffs do
    collection do
      post 'submit'
      get 'room_list'
      put 'reset_all'
    end
  end
  #post "staffs/submit"

  get "staffs/login"
  get "staffs/logout"
  get "static_pages/about"
  
  
  resources :rooms
  #match '/staffs/submit' => 'staffs#submit', :as => :submit
  match '/search' => 'rooms#search',:via=>:get
  match '/search_result' => 'rooms#search_result',:via=>:get ,:as => :search_result
  match '/' => 'rooms#index'
  match '/login' => 'staffs#login', :as => :login , :via=>:get
  match '/logout' => 'staffs#logout', :as => :logout , :via=>:get
  match "/reserves/new/:id" => "reserves#new" , :as=>:new_reserve , :via=>:get
  match '/search_box' => 'rooms#search_box', :via => :get
  #match "/rooms/:roomname" => "rooms#show" , :as=>:show_room ,:via=>:get
 # match "/movies/same_director/:id" => "movies#same_director" , :as=>:same_director , :via=>:get
  #match "/movies/same_director/:id" => "movies#same_director" , :as=>:same_director , :via=>:get
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
