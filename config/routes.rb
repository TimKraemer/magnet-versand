MagnetVersand::Application.routes.draw do
  root :to => 'magnets#view', :id => "1"
  get 'magnets/:id' => 'magnets#view'

end
