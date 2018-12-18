Rails.application.routes.draw do

  resources :prolongations do
    get "delete"
  end

  resources :warnings do
    get "delete"
  end

root "employees#welcome"

  resources :general_order_items do
    get "delete"
  end

  resources :unpaid_offdays do
    get "delete"
  end

  resources :unpaid_offday_types do
    get "delete"
  end

  resources :paid_offdays do
    get "delete"
  end

  resources :paid_offday_types do
    get "delete"
  end

  resources :orders do
    get "delete"
  end

  resources :employees_positions do
    get "delete"
  end

  resources :certificates do
    get "delete"
  end

  resources :certificate_types do
    get "delete"
  end

  resources :educations do
    get "delete"
  end

  resources :work_experiences do
    get "delete"
  end

  resources :phones do
    get "delete"
  end

  resources :phone_types do
    get "delete"
  end

  resources :position_types do
    get "delete"
  end

  resources :parents do
    get "delete"
  end

  resources :release_reasons do
    get "delete"
  end

  resources :parent_types do
    get "delete"
  end

  resources :degrees do
    get "delete"
  end
  resources :addresses do
    get "delete"
  end

  resources :foreign_cities do
    get "delete"
  end

  resources :countries do
    get "delete"
  end

  resources :employees do
    get "delete"
  end

  resources :address_types do
    get "delete"
  end

  resources :counties do
    get "delete"
  end

  resources :regions do
    get "delete"
  end

  resources :marital_statuses do
    get "delete"
  end

  resources :cities do
    get "delete"
  end

  resources :states do
    get "delete"
  end

  resources :positions do
    get "delete"
  end

  resources :departments do
    get "delete"
  end

  resources :nationalities do
    get "delete"
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
end
