Rails.application.routes.draw do
  resources :shortened_links

  # Shortened Links
  get ":code", to: "shortened_links#redirect"
  root 'shortened_links#index'
end
