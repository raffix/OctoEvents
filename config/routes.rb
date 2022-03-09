Rails.application.routes.draw do
  devise_for :users, path: '', path_names: {
    sign_in: 'signin',
    sign_out: 'signout',
    registration: 'signup'
  },
  controllers: {
      sessions: 'users/sessions',
      registrations: 'users/registrations'
  }

  root                       to: 'issue#index'
  get  '/issues',            to: 'issue#index'
  get  '/issue/:id/events',  to: 'issue#events'
  post '/',                  to: 'event#create'
end
