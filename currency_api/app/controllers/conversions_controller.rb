class ConversionsController < ApplicationController
  def convert
    amount = params[:amount].to_f
    from = params[:from_currency]
    to = params[:to_currency]

    rates = {
      "USD" => 1.0,
      "INR" => 83.0,
      "EUR" => 0.9
    }

    if !rates[from] || !rates[to]
      render json: { error: "Invalid currency" }, status: 400
      return
    end

    usd = amount / rates[from]
    converted = usd * rates[to]

    render json: { converted_amount: converted }
  end
end
