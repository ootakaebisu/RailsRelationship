Rails.application.routes.draw do
  devise_for :users
  root 'users#index'
  post 'follow/:id' => 'relationships#follow', as: 'follow' # フォローする
  post 'unfollow/:id' => 'relationships#unfollow', as: 'unfollow' # フォロー外す
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
