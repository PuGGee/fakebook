class RecipientsController < ApplicationController

  def show
  end

  def new
  end

  def create
    Coolpay::Session.authorize do
      recipient = Coolpay::Recipient.create(params[:recipient])
    end
    if recipient.valid?
      redirect_to recipient_path(recipient.id)
    else
      flash[:error] = recipient.errors.join(', ')
      redirect_to new_recipient_path
    end
  end
end
