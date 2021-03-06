Rails.application.routes.draw do
  resources :products
  resources :cocktails do
    resources :doses, only: [:new, :create]


  get "cocktails/:cocktail_id/doses", to: "doses#index"
  get "doses/:id", to: "doses#show"
  get "doses/:id/edit", to: "doses#edit"
  patch "doses/:id", to:"doses#update"

end
delete "doses/:id", to:"doses#destroy"
root 'cocktails#index'
end

