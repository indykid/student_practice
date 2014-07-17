BlogPostApp::Application.routes.draw do
  root to: 'blog_posts#index'

  get "categories/index"
  get 'categories/:id', to: 'categories#show'

  resources :blog_posts
  
end