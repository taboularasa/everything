class BooksController < ApplicationController
  # GET /books
  # GET /books.json
  def index
    @items = Book.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @items }
    end
  end

  # GET /books/1
  # GET /books/1.json
  def show
    @item = Book.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @item }
    end
  end

  # GET /books/new
  # GET /books/new.json
  def new
    @item = Book.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @item }
    end
  end

  # GET /books/1/edit
  def edit
    @item = Book.find(params[:id])
  end

  # POST /books
  # POST /books.json
  def create
    @item = Book.new(params[:book])

    respond_to do |format|
      if @item.save
        format.html { redirect_to @item, notice: 'Book was successfully created.' }
        format.json { render json: @item, status: :created, location: @item }
      else
        format.html { render action: "new" }
        format.json { render json: @item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /books/1
  # PUT /books/1.json
  def update
    @item = Book.find(params[:id])

    respond_to do |format|
      if @item.update_attributes(params[:book])
        format.html { redirect_to @item, notice: 'Book was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /books/1
  # DELETE /books/1.json
  def destroy
    @item = Book.find(params[:id])
    @item.destroy

    respond_to do |format|
      format.html { redirect_to books_url }
      format.json { head :no_content }
    end
  end
end
