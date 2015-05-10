RocketHorse::Application.routes.draw do
  root :to => 'meetings#index'

  resources :meetings, :only => [:index,:show, :edit, :update, :create, :new, :destroy]
  resources :profiles, :only => [:index]
  resources :meetings_edits, :only => [:index]

  get  'meetings/:meeting_id/tips' => 'tips#index', :as => 'tips'

end
