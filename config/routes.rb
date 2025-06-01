Rails.application.routes.draw do
    scope "(:locale)", locale: /en|pt-BR/ do
    root "pages#home"
    get "about", to: "pages#about"
    get "contact", to: "pages#contact"
    resources :projects
    namespace :admin do
      get 'dashboard', to: 'dashboard#index'
      resources :projects
    end
  end
end