class BooksController < ApplicationController
before_filter :authenticate_user!, :except => [:show, :index]

  # GET /books
  # GET /books.xml
  def index
    if(params[:genre])
      @books = Book.find(:all, :joins => :genre, :conditions => {:genres => {:name => params[:genre]}})
    else
      if(params[:customer])
        @books = Book.find(:all, :joins => :customer, :conditions => {:customers => {:username => params[:customer]}})
       #@books = Book.find(:customerId => params[:customer])
      else
       @books = Book.all
      end
    end
    @books = @books.paginate(:page => params[:page],:order => 'bookTitle ASC', :per_page => 5)

    respond_to do |format|
     format.html # index.html.erb
     format.xml  { render :xml => @books }
    end
  end

  # GET /books/1
  # GET /books/1.xml
  def show
  @book = Book.find(params[:id])
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @book }
    end
  end

  # GET /books/new
  # GET /books/new.xml
  def new
    @book = Book.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @book }
    end
  end

  # GET /books/1/edit
  def edit
    @book = Book.find(params[:id])
  end

  # POST /books
  # POST /books.xml
  def create
    @book = Book.new(params[:book])

    respond_to do |format|
      if @book.save
        format.html { redirect_to(@book, :notice => 'Book was successfully created.') }
        format.xml  { render :xml => @book, :status => :created, :location => @book }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @book.errors, :status => :unprocessable_entity }
      end
    end
  end

  def tr
    book = Book.find(params[:id])
    ontvanger = Customer.find(book.customerId)
    verzender = current_customer
    Notifier.trade_request(book,ontvanger,verzender).deliver
    redirect_to root_path , :notice => 'Ruil verzoek is verzonden.'
  end

  # PUT /books/1
  # PUT /books/1.xml
  def update
    @book = Book.find(params[:id])

    respond_to do |format|
      if @book.update_attributes(params[:book])
        format.html { redirect_to(@book, :notice => 'Book was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @book.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /books/1
  # DELETE /books/1.xml
  def destroy
    @book = Book.find(params[:id])
    @book.destroy

    respond_to do |format|
      format.html { redirect_to(books_url) }
      format.xml  { head :ok }
    end
  end
end
