# frozen_string_literal: true

class ChargesController < ApplicationController
  include CurrentCart
  before_action :set_cart, only: %i[new create]

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
  end
end
