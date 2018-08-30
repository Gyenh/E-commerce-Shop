# frozen_string_literal: true

class ChargesController < ApplicationController
  include CurrentCart
  before_action :set_cart, only: %i[new create]

  def new
    @user = current_user
  end

  def create
    # Amount in cents
    @amount = @cart.total
    puts @amount

    customer = Stripe::Customer.create(
      email: params[:email],
      source: params[:stripeToken]
    )

    charge = Stripe::Charge.create(
      customer: customer.id,
      amount: @amount,
      description: 'Une image de chat, UNE !',
      currency: 'eur'
    )
  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to root_path
  end

  def initialize
    @cart = Cart.new
  end

  def method_calls_method
    @cart.total
  end

end
