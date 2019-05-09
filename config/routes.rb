Rails.application.routes.draw do
  
  root to: 'fronts#front'
  resources :sessions
  resources :users


  resources :daftar_kursus
  resources :jenis_kursus
  resources :instrukturs


  get 'fronts/front', to: 'fronts#front'
  get 'murids/', to: 'murids#index'
  post 'murids', to: 'murids#create'
  get 'murids/new', to: 'murids#new', as:'muridsnew'
  get 'murids/:id/edit', to: 'murids#edit', as:'muridsedit'
  delete 'murids/:id', to: 'murids#destroy', as:'muridsdelete'
  patch 'murids/:id', to:'murids#update', as:'murid'
  put 'murids/:id', to:'murids#update'
  get 'murids/:id', to:'murids#show'



  get 'jenis_kursus', to: 'jenis_kurus#index', as: 'jkindex'
  get 'instrukturs', to: 'instrukturs#index', as: 'insindex'
  get 'daftar_kurus', to: 'daftar_kursus#index', as: 'daftarindex'

  get 'reports/', to: 'reports#index'
  get 'reports/murid', to: 'reports#murid', as: 'reportsmurid'

  # untuk error pages-----------------------
  get "/442", :to => "errors#unacceptable"
  get "/400", :to => "errors#bad_request"
  get "/401", :to => "errors#unauthorized"
  get "/402", :to => "errors#payment_required"
  get "/403", :to => "errors#forbidden"
  get "/404", :to => "errors#not_found"
  get "/405", :to => "errors#method_not_allowed"
  get "/406", :to => "errors#not_acceptable"
  get "/407", :to => "errors#proxy_authentication_required"
  get "/408", :to => "errors#request_timeout"
  get "/409", :to => "errors#conflict"
  get "/410", :to => "errors#gone"
  get "/411", :to => "errors#length_required"
  get "/412", :to => "errors#precondition_failed"
  get "/413", :to => "errors#payload_too_large"
  get "/414", :to => "errors#uri_too_long"
  get "/415", :to => "errors#unsupported_media_type"
  get "/416", :to => "errors#range_not_satisfiable"
  get "/417", :to => "errors#expectation_failed"
  get "/418", :to => "errors#im_a_teapot"
  get "/421", :to => "errors#misdirected_request"
  get "/422", :to => "errors#unprocessable_entity"
  get "/423", :to => "errors#locked"
  get "/424", :to => "errors#failed_dependency"
  get "/425", :to => "errors#too_early"
  get "/426", :to => "errors#upgrade_required"
  get "/428", :to => "errors#precondition_required"
  get "/429", :to => "errors#too_many_requests"
  get "/431", :to => "errors#request_header_fields_too_large"
  get "/451", :to => "errors#unavailable_for_legal_reasons"
# ------------------------------------
  get "/500", :to => "errors#internal_error"
  get "/501", :to => "errors#not_implemented"
  get "/502", :to => "errors#bad_gateway"
  get "/503", :to => "errors#service_unavailable"
  get "/504", :to => "errors#gateway_timeout"
  get "/505", :to => "errors#http_version_not_supported"
  get "/506", :to => "errors#variant_also_negotiates"
  get "/507", :to => "errors#insufficient_storage"
  get "/508", :to => "errors#loop_detected"
  get "/510", :to => "errors#not_extended"
  get "/511", :to => "errors#network_authentication_required"
  # akhir error pages ------------------------
end