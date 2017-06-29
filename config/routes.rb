Rails.application.routes.draw do
  resources :topics do
    resources :posts
  end
  resources :topics do
    resources :sponsoredposts
  end

  get 'about' => 'welcome#about'

  root 'welcome#index'
end
