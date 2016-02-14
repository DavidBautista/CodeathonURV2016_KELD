Rails.application.routes.draw do

  resources :users
  resources :user_badges
  resources :badges
  resources :reports
  resources :test_questions
  resources :tests
  resources :questions
  resources :exams do
    member do
      get :overview
    end
  end
  resources :user_subjects
  resources :degrees
  resources :centers
  resources :subjects
  root to: 'dashboard#index'
  devise_for :users, path: '', :path_names => {:sign_in => 'login', :sign_out => 'logout'}
  get 'global_ranking', to: 'dashboard#global_ranking'
end
