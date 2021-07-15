Rails.application.routes.draw do
get("/", {:controller => "add", :action => "blank_add_form"})
get("/add", {:controller => "add", :action => "blank_add_form"})
get("/wizard_add", {:controller => "add", :action => "result_add_form"})

get("/subtract", {:controller => "subtract", :action => "blank_subtract_form"})
get("/wizard_subtract", {:controller => "subtract", :action => "result_subtract_form"})

get("/multiply", {:controller => "multiply", :action => "blank_multiply_form"})
get("/wizard_multiply", {:controller => "multiply", :action => "result_multiply_form"})

get("/divide", {:controller => "divide", :action => "blank_divide_form"})
get("wizard_divide", {:controller => "divide", :action => "result_divide_form"})

get("/street_to_coords", {:controller => "application", :action => "street_to_coords_form"})
get("/wizard_street_to_coords", {:controller => "application", :action => "coords_result"})

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
