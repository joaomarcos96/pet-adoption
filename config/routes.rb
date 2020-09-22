Rails.application.routes.draw do
  root 'animals#index'
  resources :animals, only: %i[index new edit create update]
end
