Rails.application.routes.draw do
  root 'static_pages#home'

  # @todo: gcp console 에서 oauth uri 설정을 해야함 (우선은 /admin 으로 해뒀음, 추후 /user 로 변경)
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

  resources :users
end
