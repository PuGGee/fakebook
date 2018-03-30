class PaymentsController < ApplicationController

  def show
  end

  def new
  end

  def create
    service = PaymentService.new(
      params[:recipient_name],
      params[:amount],
      'GBP'
    )

    service.create_payment

    if service.success?
      redirect_to payment_path(service.payment_id)
    else
      flash[:error] = service.error_message
      redirect_to new_payment_path
    end
  end
end
