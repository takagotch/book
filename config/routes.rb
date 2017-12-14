Rails.application.routes.draw do
  root "top#books" 
  get  "about" => "top"


  resources :books
end

#index   book         GET
#show    books/1      GET
#new     books/new    GET
#edit    books/1/edit GET
#create  books        POST
#update  books        PATCH
#destroy books/1      DELETE


