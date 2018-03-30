class PaymentService < Struct.new(:recipient_id, :amount, :currency)

  delegate :id, to: :payment, prefix: true

  def create_payment
    @payment = Coolpay::Payment.create(auth_token, params[:payment])
  end

  def success?
    raise 'No payment made' if @payment.blank?

    @payment.valid? && @payment.status == 'paid'
  end

  def error_message
    @payment.errors && @payment.errors.join(', ') ||
    'There was a problem with the payment'
  end

  private

  def auth_token
    @auth_token ||= Coolpay::Session.create
  end
end
