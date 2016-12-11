Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :events do
    get '/', controller: :events, action: :index
    post '/', controller: :events, action: :get_events, as: :get_events
  end

  root to: '/events', controller: 'events/events', action: :index
end
