Rails.application.routes.draw do
  root 'static_pages#home'

  devise_for :users,
             path: '/admin',
             path_names: {
                sign_in: 'login',
                sign_out: 'logout',
                sign_up: 'signup'
             },
             controllers: {
               omniauth_callbacks: 'users/omniauth_callbacks',
               sessions: 'users/sessions'
             }

  namespace :user do
    root to: 'static_pages#home'
  end
end
