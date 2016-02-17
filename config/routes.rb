Rails.application.routes.draw do
  get '/characters' => 'characters#index'
  post '/characters' => 'characters#create'
  get '/characters/:id' => 'characters#show'
  patch '/characters/:id' => 'characters#update'
  delete '/characters/:id' => 'characters#destroy'
end
