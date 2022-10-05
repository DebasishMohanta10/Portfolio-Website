Rails.application.routes.draw do
  root :to => "pages#home"
  get '/welcome',to: "pages#home",as: "welcome"
  get '/about',to: "pages#about",as: "about"
  get '/contact',to: "pages#contact",as: "contact"
  get '/skills',to: "pages#technical",as: "skills"
  get '/portfolio',to: "pages#portfolio",as: "portfolio"
  get '/album',to: "pages#album",as: "album"
  get '/blog',to: "pages#blog", as: "blog"
  resources :messages,only: [:create]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
