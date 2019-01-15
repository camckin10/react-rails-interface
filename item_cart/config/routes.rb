Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  Rails.application.routes.draw do
    namespace :api do
      namespace :v1 do
        resources :items, only: [:index, :create, :destroy, :update]
      end
    end
  end
end

Rails.application.routes.draw do
  root to: 'site#index'
end 
