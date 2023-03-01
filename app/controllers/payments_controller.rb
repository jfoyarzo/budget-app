class PaymentsController < ApplicationController
  before_action :set_group, only: %i[index create]

  def index
    @payments = @group.payments
  end

  def new
    @payment = Payment.new
  end

  def create
    @payment = Payment.new(payment_params)
    @payment.author = current_user

    respond_to do |f|
      if @payment.save
        GroupPayment.create(payment: @payment, group: @group)
        f.html { redirect_to group_payments_path(@group.id), notice: 'The Payment was added successfully.' }
      else
        f.html { render :index, status: :unprocessable_entity }
      end
    end
  end

  private

  def set_group
    @group = Group.find(params[:group_id])
  end

  def payment_params
    params.require(:payment).permit(:name, :amount)
  end
end
