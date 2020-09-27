Rails.application.routes.draw do
  root 'animals#index'
  resources :animals, only: %i[index show new edit create update] do
    resources :adoptions, only: %i[index new create]
  end
end
