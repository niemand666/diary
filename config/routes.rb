Rails.application.routes.draw do
  devise_for :users
  root 'diaries#index' # 一覧画面
  get '/new' => 'diaries#new' # 投稿画面
  post '/complete' => 'diaries#create' # 投稿機能
  post '/login' => 'diaries#login' # ログイン画面
  get '/:id/edit' => 'diaries#edit' #編集画面
  patch '/:id' => 'diaries#update' #編集機能 
  delete '/:id' => 'diaries#destroy'
  resources :users
end
