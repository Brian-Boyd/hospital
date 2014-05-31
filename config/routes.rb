Rails.application.routes.draw do
  devise_for :users
  resources :doctors, only: [:index]
  resources :patients, only: [:index]
  resources :medications, only: [:index]
  resources :doctors

  root 'home#index'

  get 'patients/:id' => 'patients#showinfo', as: :patient_showinfo
  get 'medications/:id' => 'medications#mededit', as: :medication_mededit
  post 'medications/:id' => 'medications#medupdate', as: :medication_medupdate
  get 'medications/:id' => 'medications#meddestroy', as: :medication_meddestroy
  delete 'medications/:id' => 'medications#meddelete', as: :medication_meddelete
  
  resources :hospitals do
    member do
      get :new_doctor
      post :create_doctor
    end
    resources :patients do
      resources :medications do
      end
      collection do
        get :search_names
      end
      member do
        patch :waiting
        patch :doctor
        patch :xray
        patch :surgery
        patch :billpay
        patch :leaving
        get :release
        get :new_doctor
        post :create_doctor
      end
    end
  end
end

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