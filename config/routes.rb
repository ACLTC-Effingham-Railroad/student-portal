Rails.application.routes.draw do
 devise_for :students
 root 'pages#index'

 get '/pages' => 'pages#index'
 
 get '/pages/:id' => 'pages#show'

 get '/pages/:id/edit' => 'pages#edit'
 patch '/pages/:id' => 'pages#update'

end
