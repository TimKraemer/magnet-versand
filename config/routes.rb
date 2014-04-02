MagnetVersand::Application.routes.draw do

  root :to => 'magnets#index', :id => 1
  get 'magnets/:category' => 'magnets#view'
  post "magnets/:id" => "magnets#create"

end
	