Rails.application.routes.draw do
  resources :orders
  resources :line_items do
    collection do
      post 'remove_product_pcs'
      post 'add_product_pcs'
    end
  end
  resources :carts
  root 'store#index', as: 'store_index'
  #get 'store/index'
  resources :products do
    get :who_bought, on: :member
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
