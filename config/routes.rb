Rails.application.routes.draw do
  get 'admin/index' => 'admin#index'

  controller :session do
    post    'login'  => :create
    get     'login'  => :new
    delete  'logout' => :destroy
  end

  resources :users

  resources :products do
    get :who_bought, on: :member
  end

  scope '(:locale)' do
    resources :pay_types
    resources :orders
    resources :line_items
    resources :carts
    # get 'store/index'
    root 'store#index', as: 'store_index'
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
