Rails.application.routes.draw do
  # form pages

  get("/", {:controller => "calculator", :action => "square"})

  get("/square/new", {:controller => "calculator", :action => "square"})
  
  get("/square_root/new", {:controller => "calculator", :action => "square_root"})

  get("/payment/new", {:controller => "calculator", :action => "payment"})

  get("/random/new", {:controller => "calculator", :action => "new_random"})

  # results pages
  
  get("/square/results", {:controller => "calculator", :action => "result_sq"})

  get("/square_root/results", {:controller => "calculator", :action => "result_sqrt"})

  get("/payment/results", {:controller => "calculator", :action => "result_payment"})

  get("/random/results", {:controller => "calculator", :action => "result_random"})
end
