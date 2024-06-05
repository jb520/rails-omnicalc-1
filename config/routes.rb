Rails.application.routes.draw do
  get("/", {:controller => "calculator", :action => "square"})

  get("/square/new", {:controller => "calculator", :action => "square"})
  
  get("/square_root/new", {:controller => "calculator", :action => "square_root"})
end
