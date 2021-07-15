class MultiplyController < ApplicationController

  def blank_multiply_form
    render ({ :template => "multiply_new.html.erb"})

  end

  def result_multiply_form
    
    @firstnum = params.fetch("first_num").to_f
    @secondnum = params.fetch("second_num").to_f
    @result = @firstnum * @secondnum

    render ({ :template => "multiply_result.html.erb"})
  end

end