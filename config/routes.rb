MagnetVersand::Application.routes.draw do
  root :to => 'magnets#index'
  get 'magnets/:id' => 'magnets#view'

end
