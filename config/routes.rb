Rails.application.routes.draw do
  get "upload" => "images#new", :as => "uploads"
  get 'images/create'
  get 'images/destroy'
  get 'images/index'
  get 'images/index_delete' => 'images#index_delete'
  get 'categories/new'
  get 'categories/create'
  get 'categories/edit'
  get 'categories/update'
  get 'categories/destroy'
  get 'categories/show'
  root to: 'images#index'

  resources :images, :categories
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
