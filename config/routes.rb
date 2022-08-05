Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root :to => 'homes#top'
  get 'books' => 'books#index'
  post 'books' => 'books#create'
  get 'books/index' => 'books#show'
  get 'books' => 'books#edit'
end

