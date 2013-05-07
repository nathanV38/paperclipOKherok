class GarmentImagesController < ApplicationController
  # GET /garment_images
  # GET /garment_images.json
  def index
    @garment_images = GarmentImage.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @garment_images }
    end
  end

  # GET /garment_images/1
  # GET /garment_images/1.json
  def show
    @garment_image = GarmentImage.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @garment_image }
    end
  end

  # GET /garment_images/new
  # GET /garment_images/new.json
  def new
    @garment_image = GarmentImage.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @garment_image }
    end
  end

  # GET /garment_images/1/edit
  def edit
    @garment_image = GarmentImage.find(params[:id])
  end

  # POST /garment_images
  # POST /garment_images.json
  def create
    @garment_image = GarmentImage.new(params[:garment_image])

    respond_to do |format|
      if @garment_image.save
        format.html { redirect_to @garment_image, notice: 'Garment image was successfully created.' }
        format.json { render json: @garment_image, status: :created, location: @garment_image }
      else
        format.html { render action: "new" }
        format.json { render json: @garment_image.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /garment_images/1
  # PUT /garment_images/1.json
  def update
    @garment_image = GarmentImage.find(params[:id])

    respond_to do |format|
      if @garment_image.update_attributes(params[:garment_image])
        format.html { redirect_to @garment_image, notice: 'Garment image was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @garment_image.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /garment_images/1
  # DELETE /garment_images/1.json
  def destroy
    @garment_image = GarmentImage.find(params[:id])
    @garment_image.destroy

    respond_to do |format|
      format.html { redirect_to garment_images_url }
      format.json { head :no_content }
    end
  end
end
