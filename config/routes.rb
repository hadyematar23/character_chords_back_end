Rails.application.routes.draw do
  get 'characters/show'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

      namespace :chordsapi do 
        namespace :v1 do   
            root to: "themes#index"
          resources :themes do
            resources :questions, only: [:index]
            resources :characters, only: [:show] do 
              get 'find_character', on: :collection
              resources :playlists, only: [:create, :show]
            end
      end
    end 
  end 
end
