Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#index'
  post 'tweets', to: 'welcome#create', as: 'tweets'
  get 'tweets', to: 'welcome#tweets'
end
