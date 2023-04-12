Rails.application.routes.draw do
  get 'characters/show'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

      namespace :chordsapi do 
        namespace :v1 do         
          resources :themes do
            resources :questions, only: [:index]
            resources :characters do 
              resources :playlists, only: [:show]
            end
      end
    end 
  end 
end
