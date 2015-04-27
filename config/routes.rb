RocketHorse::Application.routes.draw do
  root :to => 'meetings#index'

  resources :meetings, :only => [:index]

  get  'meetings/:meeting_id/tips' => 'tips#index', :as => 'tips'

end
