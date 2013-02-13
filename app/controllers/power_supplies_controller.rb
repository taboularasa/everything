class PowerSuppliesController < ApplicationController
  # GET /power_supplies
  # GET /power_supplies.json
  def index
    @power_supplies = PowerSupply.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @power_supplies }
    end
  end

  # GET /power_supplies/1
  # GET /power_supplies/1.json
  def show
    @power_supply = PowerSupply.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @power_supply }
    end
  end

  # GET /power_supplies/new
  # GET /power_supplies/new.json
  def new
    @power_supply = PowerSupply.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @power_supply }
    end
  end

  # GET /power_supplies/1/edit
  def edit
    @power_supply = PowerSupply.find(params[:id])
  end

  # POST /power_supplies
  # POST /power_supplies.json
  def create
    @power_supply = PowerSupply.new(params[:power_supply])

    respond_to do |format|
      if @power_supply.save
        format.html { redirect_to @power_supply, notice: 'Power supply was successfully created.' }
        format.json { render json: @power_supply, status: :created, location: @power_supply }
      else
        format.html { render action: "new" }
        format.json { render json: @power_supply.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /power_supplies/1
  # PUT /power_supplies/1.json
  def update
    @power_supply = PowerSupply.find(params[:id])

    respond_to do |format|
      if @power_supply.update_attributes(params[:power_supply])
        format.html { redirect_to @power_supply, notice: 'Power supply was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @power_supply.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /power_supplies/1
  # DELETE /power_supplies/1.json
  def destroy
    @power_supply = PowerSupply.find(params[:id])
    @power_supply.destroy

    respond_to do |format|
      format.html { redirect_to power_supplies_url }
      format.json { head :no_content }
    end
  end
end
