Rails.application.routes.draw do
get("/", {:controller => "add", :action => "blank_add_form"})
get("/add", {:controller => "add", :action => "blank_add_form"})
get("/wizard_add", {:controller => "add", :action => "result_add_form"})

get("/subtract/new", {:controller => "subtract", :action => "blank_subtract_form"})
get("/subtract/results", {:controller => "subtract", :action => "result_subtract_form"})

get("/multiply/new", {:controller => "multiply", :action => "blank_multiply_form"})
get("/multiply/results", {:controller => "multiply", :action => "result_multiply_form"})

get("/divide/new", {:controller => "divide", :action => "blank_divide_form"})
get("/divide/results", {:controller => "divide", :action => "result_divide_form"})
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
