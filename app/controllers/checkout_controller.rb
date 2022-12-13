class CheckoutController < ApplicationController
  def create
    @session = Stripe::Checkout::Session.create({
      mode: 'payment',
      payment_method_types: ['card'],
      line_items: [{
        name: product.name,
        amount: product.price,
        currency: "cad",
        qty: 1
        }],
        mode: 'payment',
        success_url: 'https://example.com/success',
        cancel_url: 'https://example.com/cancel',
      })
  end
end