class CalculatorController < ApplicationController
  def square
    render({:template => "cal_pages/cal_square"})
  end

  def square_root
    render({:template => "cal_pages/cal_sqrt"})
  end

  def payment
    render({:template => "cal_pages/cal_payment"})
  end

  def new_random
    render({:template => "cal_pages/cal_random"})
  end

  # results
  
  def result_sq
    @num = params.fetch("number").to_f
    @result = @num ** 2
    
    render({:template => "cal_pages/sq_result"})
  end

  def result_sqrt
    @num = params.fetch("number").to_f
    @result = Math.sqrt(@num)

    render({:template => "cal_pages/sqrt_result"})
  end

  def result_payment
    @apr = params.fetch("user_apr").to_f
    @years = params.fetch("user_years").to_i
    @pv = params.fetch("user_pv").to_f

    #apr to rate per month
    @rate = @apr / 100
    @r = @rate / 12 

    #years to number of periods
    @n = @years * 12

    @numerator = @r * @pv
    @denominator = 1 - ((1 + @r) ** (-@n))
    
    @result = @numerator / @denominator

    render({:template => "cal_pages/payment_result"})
  end

  def result_random
    @min = params.fetch("user_min").to_f
    @max = params.fetch("user_max").to_f
    @result = rand(@min..@max)

    render({:template => "cal_pages/random_result"})
  end
end
