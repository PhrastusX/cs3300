
Rails.application.routes.draw do
  devise_for :students
  root "projects#home"
  resources :projects

end
