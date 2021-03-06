Aventurapleinair::Application.routes.draw do
  get "set_language/french"
  get "set_language/english"
  get "set_season/winter"
  get "set_season/summer"
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  root 'home#index'
  resources :activity
  resources :activity_category
  resources :location
  resources :event
  resources :top_five
  resources :search
  resources :about_page
  resources :political_review
  
  match 'politique' => 'political_review#index', :via => :get, :as => :politique
  match 'contact' => 'about_page#contact', :via => :get, :as => :contact
  match 'activity/:id/locations' => 'activity#locations', :via => :get, :as => :activity_locations
  match 'activity/:id/events' => 'activity#events', :via => :get, :as => :activity_events
  match 'activity/:id/:activity_rating/update' => 'activity_rating#rate', :via => :get, :as => :update_activity_rating
  match 'event/:id/:event_rating/update' => 'event_rating#rate', :via => :get, :as => :update_event_rating
  match 'location/:id/:location_rating/update' => 'location_rating#rate', :via => :get, :as => :update_location_rating
  match "*rest" => "errors#not_found", :via => [:get, :post]
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
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

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end
  
  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
