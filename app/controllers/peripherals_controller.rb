class PeripheralsController < ApplicationController
  # GET /peripherals
  # GET /peripherals.json
  def index
    @peripherals = Peripheral.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @peripherals }
    end
  end

  # GET /peripherals/1
  # GET /peripherals/1.json
  def show
    @peripheral = Peripheral.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @peripheral }
    end
  end

  # GET /peripherals/new
  # GET /peripherals/new.json
  def new
    @peripheral = Peripheral.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @peripheral }
    end
  end

  # GET /peripherals/1/edit
  def edit
    @peripheral = Peripheral.find(params[:id])
  end

  # POST /peripherals
  # POST /peripherals.json
  def create
    @peripheral = Peripheral.new(params[:peripheral])

    respond_to do |format|
      if @peripheral.save
        format.html { redirect_to @peripheral, notice: 'Peripheral was successfully created.' }
        format.json { render json: @peripheral, status: :created, location: @peripheral }
      else
        format.html { render action: "new" }
        format.json { render json: @peripheral.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /peripherals/1
  # PUT /peripherals/1.json
  def update
    @peripheral = Peripheral.find(params[:id])

    respond_to do |format|
      if @peripheral.update_attributes(params[:peripheral])
        format.html { redirect_to @peripheral, notice: 'Peripheral was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @peripheral.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /peripherals/1
  # DELETE /peripherals/1.json
  def destroy
    @peripheral = Peripheral.find(params[:id])
    @peripheral.destroy

    respond_to do |format|
      format.html { redirect_to peripherals_url }
      format.json { head :no_content }
    end
  end
end
