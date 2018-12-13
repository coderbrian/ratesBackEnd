Rails.application.routes.draw do
  resources:faq
  resources:calculate
  resources:rates
  root 'calculate#index'
  resources:markets
  resources:currencies
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
