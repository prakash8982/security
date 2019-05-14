Rails.application.routes.draw do
  root "home#index"
  get 'home/index'
  get 'home/about'
  get 'home/contect'
  get 'pstaffs/showuser'


  devise_scope :user do
  	delete 'sign_out', to: 'devise/sessions#new
'
  end
  devise_for :users
  resources :users



  
  resources :pstaffs
  get 'phase1/index'
  get 'phase1/phase1'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
