class CustomersController < ApplicationController
	
  # GET /books/1
  # GET /books/1.xml
  def show
  @customer = Customer.find(params[:id])
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @book }
    end
  end

end
