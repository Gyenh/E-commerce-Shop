# frozen_string_literal: true

class ChargesController < ApplicationController
  include CurrentCart
  before_action :set_cart, only: %i[new create]

<<<<<<< HEAD
  def new
  end

  def create
    StripeChargesServices.new(charges_params, current_user).call
    redirect_to new_charge_path
  end

  private

  def charges_params
    params.permit(:stripeEmail, :stripeToken, :order_id)
  end

  def catch_exception(exception)
    flash[:error] = exception.message
=======
  def new; end

  def create
    # Amount in cents
    @amount = 500

    customer = Stripe::Customer.create(
      email: params[:stripeEmail],
      source: params[:stripeToken]
    )

    charge = Stripe::Charge.create(
      customer: customer.id,
      amount: @amount,
      description: 'Une image de chat !',
      currency: 'eur'
    )
  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to root_path
>>>>>>> d035e3df949113f7e81588f9c805ed2f5252777f
  end
  
end
