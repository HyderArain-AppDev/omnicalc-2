class SubtractController < ApplicationController

  def blank_subtract_form
    render ({ :template => "subtract_new.html.erb"})

  end

  def result_subtract_form
    
    @firstnum = params.fetch("first_num").to_f
    @secondnum = params.fetch("second_num").to_f
    @result = @firstnum - @secondnum

    render ({ :template => "subtract_result.html.erb"})
  end

end