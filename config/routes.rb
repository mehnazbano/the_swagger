Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/api' => redirect('/swagger/dist/index.html?url=/api/v1/api-docs.json')
  namespace :api do
    namespace :v1 do
      resources :thermostats do
        member do
        end

        collection do
        end
      end
      resources :readings do
        member do
        end

        collection do
        end

      end
    end
  end
end
