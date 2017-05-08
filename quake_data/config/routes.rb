Rails.application.routes.draw do
  devise_for :users
  resources :quakes
  post 'auth_user' => 'authentication#authenticate_user'

  get 'quakes' , to: "quakes#index.json"

  get 'cities', to: 'quakes#cities'
  get 'cities/:id', to: 'quakes#cities'
 # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
      resources :locations do
            resources :recordings
              end
          end
  resources :locations
if Rails.env.development?
  mount Localtower::Engine, at: "localtower"
end

end
