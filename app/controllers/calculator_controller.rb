class CalculatorController < ApplicationController
  def "square"
    render({:template => "cal_pages/cal_square"})
  end

  def "square_root"
    render({:template => "cal_pages/cal_sqrt"})
  end
end
