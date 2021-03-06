class CustomersController < ApplicationController

  def index
    @customers = Customer.all

@customers = @customers.paginate(:page => params[:page],:order => 'username ASC', :per_page => 6)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @customers }
    end

  end
	
  # GET /customers/1
  # GET /customers/1.xml
  def show
  @customer = Customer.find(params[:id])
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @book }
    end
  end

  # GET /customers/1/edit
  def edit
    @customer = Customer.find(params[:id])
  end

end
