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
  
  def payment
    render({template: "calc_templates/payment_calc"})
  end

  def payment_result
    @the_APR = params.fetch("user_APR").to_f

    @the_YRS = params.fetch("user_years").to_f

    @the_Principal = params.fetch("user_pv").gsub(/[^0-9]/, "").to_f

    @rate_per_period = @the_APR / 12 / 100

    @periods = @the_YRS * 12

    @the_payment = (@rate_per_period*@the_Principal)/(1 - (1 + @rate_per_period)**-@periods)
    render({template: "calc_templates/payment_final"})
  end

  def random
    render({template: "calc_templates/random_calc"})
  end

  def random_result
    @the_min = params.fetch("user_min").to_f

    @the_max = params.fetch("user_max").to_f

    @the_rand_result = rand(@the_min..@the_max)

    render({template: "calc_templates/random_final"})
  end

end 
