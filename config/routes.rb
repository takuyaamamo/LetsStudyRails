Rails.application.routes.draw do
  get 'posts/new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'top' => 'root#top'
  # .../postsというURLにpostでリクエストした時にpostsコントローラーのcreateアクションが呼び出される
  post 'posts' => 'posts#create'

  get 'posts' => 'posts#index'
  # .../posts/1 や .../posts/3 に該当する
  get 'posts/:id' => 'posts#show', as: 'post'
end
