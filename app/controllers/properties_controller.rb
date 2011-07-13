class PropertiesController < ApplicationController
  # GET /properties
  def index
    @properties = Property.all
  end

  # GET /properties/1
  def show
    @property = Property.find(params[:id])
  end

  # GET /properties/new
  def new
    @property = Property.new
  end

  # GET /properties/1/edit
  def edit
    @property = Property.find(params[:id])
  end

  # POST /properties
  # POST /properties.json
  def create
    @property = Property.new(params[:property])

    if @property.save
      redirect_to @property, notice: 'Property was successfully created.'
    else
      render action: "new"
    end
  end

  # PUT /properties/1
  def update
    @property = Property.find(params[:id])

    if @property.update_attributes(params[:property])
      redirect_to @property, notice: 'Property was successfully updated.'
    else
      render action: "edit"
    end
  end

  # DELETE /properties/1
  def destroy
    @property = Property.find(params[:id])
    @property.destroy

    redirect_to properties_url, :notice => 'Property Deleted.'
  end
end
