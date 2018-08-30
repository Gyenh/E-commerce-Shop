# frozen_string_literal: true

class ChargesController < ApplicationController
  include CurrentCart
  before_action :set_cart, only: %i[new create]

  def new
    @user = current_user
    @cart = current_cart
    @amount = @cart.total
  end

  def create
    # Amount in cents
    @amount = @cart.total

    customer = Stripe::Customer.create(
      email: @user.email,
      source: params[:stripeToken]
    )

    charge = Stripe::Charge.create(
      customer: @user.id,
      amount: @amount,
      description: 'Une image de chat, UNE !',
      currency: 'eur'
    )
  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to root_path
  end
end
