class KnapsackController < ApplicationController

  def index
  end
  
  def table
  end

  def calc
    @result, @notResult, @matrix = Knapsack::Knapsack.knapsack_table(params[:capacity], params[:weights], params[:values])

    render layout: false
  end

end
