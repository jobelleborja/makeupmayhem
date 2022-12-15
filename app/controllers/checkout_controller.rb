class CheckoutController < ApplicationController
  def create
    product = Product.find(params[:id])

    if product.nil?
      redirect_to root_path
      return
    end

    product = Stripe::Product.create({
      name: product.name,
      description: product.description,
    })

    price = Stripe::Price.create({
      product: product.id,
      unit_amount: 2000,
      currency: 'cad',
    })

    session = Stripe::Checkout::Session.create(
      payment_method_types: ['card'],
      line_items: [{
        name: product.name,
        description: product.description,
        unit_amount: 2000,
        currency: 'cad',
        price: price.id,
        }],
      mode: 'payment',
      success_url: 'https://example.com/success?session_id={CHECKOUT_SESSION_ID}',
      cancel_url: 'https://example.com/cancel',
    )

    respond_to do |format|
      format.js # renders create.js.erb
    end
  end

  def success
    @session = Stripe::Checkout::Session.retrieve(params[:session_id])
    @payment_intent = Stripe::PaymentIntent.retrieve(@session.payment_intent)
  end
end