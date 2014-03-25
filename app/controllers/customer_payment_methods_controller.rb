class CustomerPaymentMethodsController < ApplicationController
  before_action :set_customer_payment_method, only: [:show, :edit, :update, :destroy]

  # GET /customer_payment_methods
  # GET /customer_payment_methods.json
  def index
    @customer_payment_methods = CustomerPaymentMethod.all
  end

  # GET /customer_payment_methods/1
  # GET /customer_payment_methods/1.json
  def show
  end

  # GET /customer_payment_methods/new
  def new
    @customer_payment_method = CustomerPaymentMethod.new
  end

  # GET /customer_payment_methods/1/edit
  def edit
  end

  # POST /customer_payment_methods
  # POST /customer_payment_methods.json
  def create
    @customer_payment_method = CustomerPaymentMethod.new(customer_payment_method_params)

    respond_to do |format|
      if @customer_payment_method.save
        format.html { redirect_to @customer_payment_method, notice: 'Customer payment method was successfully created.' }
        format.json { render action: 'show', status: :created, location: @customer_payment_method }
      else
        format.html { render action: 'new' }
        format.json { render json: @customer_payment_method.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /customer_payment_methods/1
  # PATCH/PUT /customer_payment_methods/1.json
  def update
    respond_to do |format|
      if @customer_payment_method.update(customer_payment_method_params)
        format.html { redirect_to @customer_payment_method, notice: 'Customer payment method was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @customer_payment_method.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /customer_payment_methods/1
  # DELETE /customer_payment_methods/1.json
  def destroy
    @customer_payment_method.destroy
    respond_to do |format|
      format.html { redirect_to customer_payment_methods_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_customer_payment_method
      @customer_payment_method = CustomerPaymentMethod.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def customer_payment_method_params
      params.require(:customer_payment_method).permit(:credit_cardNumber, :payment_method_details)
    end
end
