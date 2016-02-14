Rails.application.routes.draw do

  resources :users
  resources :user_badges
  resources :badges
  resources :reports
  resources :test_questions
  resources :tests
  get 'exam/:exam_id/start_test', to: 'tests#start_test', as: :start_test
  get 'test/:test_id/present_test_question/:order/', to: 'test_questions#present_test_question', as: :present_test_question
  post 'test/:test_id/respond_question/:order/:response/', to: 'test_questions#respond_question', as: :respond_question
  post 'test/:test_id/finish_test/', to: 'tests#finish_test', as: :finish_test
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
