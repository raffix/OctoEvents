Rails.application.routes.draw do
  devise_for :users

  get  '/',                  to: 'issue#index'
  get  '/issue/:id/events',  to: 'issue#events'
  post '/',                  to: 'issue#create'
end
