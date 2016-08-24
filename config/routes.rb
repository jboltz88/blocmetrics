Rails.application.routes.draw do
  resources :users, only: [] do
    resources :registered_apps do
      resources :events, only: [:create]
    end
  end

  devise_for :users

  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end

  authenticated do
    root to: 'registered_apps#index', as: :authenticated_root
  end

  get 'welcome/show'
  root to: 'welcome#show'
end
