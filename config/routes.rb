Rails.application.routes.draw do
  get("/", {:controller => "calculator", :action => "process_square"})

  get("/square/new", {:controller => "calculator", :action => "process_square"})
  
end
