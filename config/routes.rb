ActionController::Routing::Routes.draw do |map|
  map.root :controller => 'top'

  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
