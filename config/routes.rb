Rails.application.routes.draw do
  root 'static#home'

  # get 'educations/show'

  # get 'educations/index'

  # get 'educations/new'

  # get 'educations/create'

  # get 'educations/edit'

  # get 'educations/update'

  # get 'educations/destroy'
  resources :educations

  resources :jobs
  # get 'jobs/index'

  # get 'jobs/show'

  # get 'jobs/profile'

  # get 'jobs/new'

  # get 'jobs/create'

  # get 'jobs/edit'

  # get 'jobs/update'

  # get 'jobs/destroy'

  resources :certs


  get 'profiles/new'

  get 'profiles/create'

  get 'profiles/update'

  get 'profiles/edit'

  get 'profiles/show'

  get 'profiles/destroy'

  get 'profiles/index'

  devise_for :users
  

  get 'static/about'
  get 'static/tour'
  get 'static/contact'


  

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

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
