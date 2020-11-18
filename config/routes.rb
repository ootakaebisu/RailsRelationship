Rails.application.routes.draw do
  devise_for :users
  root 'users#index'
  post 'follow/:id' => 'relationships#follow', as: 'follow' # フォローする
  post 'unfollow/:id' => 'relationships#unfollow', as: 'unfollow' # フォロー外す

  resources :users, only: :show
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

# お手本URL
# http://freecamp.life/rails-follow-follower/