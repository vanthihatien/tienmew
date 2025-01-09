Rails.application.routes.draw do
  get "products/index"
  get "/products", to: "products#index"
  root "products#index"

  resources :products


  get "/products/new", to: "products#new"
  post "/products", to: "products#create"
  
  get "/products/:id", to: "products#show"
  
  get "/products/:id/edit", to: "products#edit"
  patch "/products/:id", to: "products#update"
  put "/products/:id", to: "products#update"
  
  delete "/products/:id", to: "products#destroy"
  
end
