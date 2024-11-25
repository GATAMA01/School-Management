class PaymentsController < ApplicationController
    resources :payments, only: [:index, :new, :create]

    before_action :authenticate_user!

  def index
    @payments = current_user.payments
  end

  def new
    @payment = Payment.new
  end

  def create
    @payment = current_user.payments.build(payment_params)
    if @payment.save
      # Integrasi dengan gateway pembayaran seperti Midtrans di sini
      redirect_to payments_path, notice: "Pembayaran berhasil disimpan"
    else
      render :new
    end
  end

  private

  def payment_params
    params.require(:payment).permit(:amount)
  end
end
