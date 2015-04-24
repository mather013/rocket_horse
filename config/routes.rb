RocketHorse::Application.routes.draw do
  root :to => 'meetings#index'

  resources :meetings, :only => [:index]

end
