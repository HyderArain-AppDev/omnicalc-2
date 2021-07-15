class DivideController < ApplicationController

  def blank_divide_form
    render ({ :template => "divide_new.html.erb"})

  end

  def result_divide_form
    
    @firstnum = params.fetch("first_num").to_f
    @secondnum = params.fetch("second_num").to_f
    @result = @firstnum / @secondnum

    render ({ :template => "divide_result.html.erb"})
  end

end