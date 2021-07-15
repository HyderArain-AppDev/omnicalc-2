class AddController < ApplicationController

  def blank_add_form
    render ({ :template => "add_new.html.erb"})

  end

  def result_add_form
    
    @firstnum = params.fetch("first_num").to_f
    @secondnum = params.fetch("second_num").to_f
    @result = @firstnum + @secondnum

    render ({ :template => "add_result.html.erb"})
  end

end