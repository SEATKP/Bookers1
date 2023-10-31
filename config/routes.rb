Rails.application.routes.draw do
 root :to => 'homes#top'
 # get 'books/new'
 # post 'books' => 'books#create'
 # get 'books' => 'books#index'
 # patch 'books/:id' => 'books#update', as: 'update_book'
 # delete 'books/:id' => 'books#destroy', as: 'destroy_book'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :books
end
