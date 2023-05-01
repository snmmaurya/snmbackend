Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "api/v1/data#index"

  namespace :api do
    namespace :v1 do
      resources :data, only: :index


      scope :users, controller: "users" do
        post :registration
      end
    end
  end

end
