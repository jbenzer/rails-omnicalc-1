class CalcController < ApplicationController
  def square
    render({template: "calc_templates/square_calc"})
  end

  def square_result
    @the_num = params.fetch("user_square").to_f

    @the_result = @the_num ** 2

    render({template: "calc_templates/square_final"})
  end

  def sqrt
    render({template: "calc_templates/sqrt_calc"})
  end

  def sqrt_result
    @the_sqrt_num = params.fetch("user_sqrt").to_f

    @sqrt_result = Math.sqrt(@the_sqrt_num)

    render({template: "calc_templates/sqrt_final"})
  end  

end 
