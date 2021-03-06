class ItemsController < ApplicationController
  before_filter :authenticate_user!, except: [:index, :show]

  def index
    if params[:type]
      @items = ad_type.all
    else
      @items = Item.all
    end
  end

  def show
    @item = ad_type.find(params[:id])
    render "#{@item.type.downcase.pluralize}/show"
  end

  def new
    @item = ad_type.new
  end

  def edit
    @item = Item.find(params[:id])
  end

  def create
    @item = ad_type.new(params[params[:type].downcase])
    if @item.save
      redirect_to @item, notice: 'item was successfully created.'
    else
      #render action: "new"
      render "#{@item.type.downcase.pluralize}/new"
    end
  end

  def update
    @item = Item.find(params[:id])

    if @item.update_attributes(params[params[:type].downcase])
      redirect_to @item, notice: 'item was successfully updated.'
    else
      render action: "edit"
    end
  end

  def destroy
    @item = Item.find(params[:id])
    @item.destroy

    redirect_to items_url
  end

private

  def ad_type
    params[:type].constantize
  end

end
