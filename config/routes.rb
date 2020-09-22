Rails.application.routes.draw do
  root 'animals#index'
  resources :animals, only: %i[index new edit create update] do
    resources :adoptions, only: %i[new create]
  end
end
