Iat222::Application.routes.draw do
  devise_for :users, controllers: { registrations: "registrations" }, :path_names => { :sign_in => 'signin', :sign_out => 'signout', :sign_up => 'signup' }

  root to: 'home#index'

  authenticated :user do
  	resources :pages
  	get '/admin' => 'home#admin'
  end

  get '/:name' => 'pages#show'
end
