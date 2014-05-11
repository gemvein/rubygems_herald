Rails.application.routes.draw do
  resources :gem_displays, only: [:index,:show] do
    get 'refresh', on: :member
  end
end