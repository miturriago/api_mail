class CustomersController < ApplicationController
    def index
        @customers = Customer.all 
        render json: @customers
    end 

    def show
        @customer = Customer.find(params[:id])
        render json: @customer
    end 

    def create
        @customer = Customer.create(
            name: params[:name],
            phone: params[:phone],
            email: params[:email],
            description: params[:description]
        )
        render json: @customer
    end 

    def update
        @customer = Customer.find(params[:id])
        @customer.update(
            name: params[:name],
            phone: params[:phone],
            email: params[:email],
            description: params[:description]
        )
        render json: @customer
    end 

    def destroy
        @customers = Customer.all 
        @customer = Customer.find(params[:id])
        @customer.destroy
        render json: @customers
    end 
end
