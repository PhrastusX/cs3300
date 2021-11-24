
Rails.application.routes.draw do
  devise_for :students
  root "projects#index"
  resources :projects
end
