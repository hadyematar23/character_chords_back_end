Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

      namespace :chordsapi do 
        namespace :v1 do 
          resources :themes do
            resources :questions, only: [:index]
      end
    end 
  end 
end
