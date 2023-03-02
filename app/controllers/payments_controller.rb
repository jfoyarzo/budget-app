class PaymentsController < ApplicationController
  before_action :set_group

  def index
    @payments = @group.payments
  end

  def new
    @payment = Payment.new
    @groups = current_user.groups
  end

  def create
    if params[:payment][:groups].nil?
      flash[:alert] = 'Must select at least one category'
      redirect_to new_group_payment_path(@group)
    else
      @payment = Payment.new(payment_params)
      @payment.author = current_user

      respond_to do |f|
        if @payment.save
          params[:payment][:groups].each { |group| GroupPayment.create(payment: @payment, group_id: group) }
          f.html { redirect_to group_payments_path(@group.id), notice: 'The Payment was added successfully.' }
        else
          f.html { render :index, status: :unprocessable_entity }
        end
      end
    end
  end

  private

  def set_group
    @group = Group.find(params[:group_id])
  end

  def payment_params
    params.require(:payment).permit(:name, :amount, categories: [])
  end
end
