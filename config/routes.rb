Rails.application.routes.draw do
  get 'characters/show'

  root to: "chordsapi/v1/themes#index"
  namespace :chordsapi do 
    namespace :v1 do         
      resources :themes do
        resources :questions, only: [:index]
        resources :characters, only: [:index, :show] do 
          get 'find_character', on: :collection
          resources :playlists, only: [:create, :show]
        end
      end
    end 
  end 
end
