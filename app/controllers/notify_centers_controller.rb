class NotifyCentersController < ApplicationController
  # GET /notify_centers
  # GET /notify_centers.json
  def index
    @notify_centers = NotifyCenter.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @notify_centers }
    end
  end

  # GET /notify_centers/1
  # GET /notify_centers/1.json
  def show
    @notify_center = NotifyCenter.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @notify_center }
    end
  end

  # GET /notify_centers/new
  # GET /notify_centers/new.json
  def new
    @notify_center = NotifyCenter.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @notify_center }
    end
  end

  # GET /notify_centers/1/edit
  def edit
    @notify_center = NotifyCenter.find(params[:id])
  end

  # POST /notify_centers
  # POST /notify_centers.json
  def create
    @notify_center = NotifyCenter.new(params[:notify_center])

    respond_to do |format|
      if @notify_center.save
        format.html { redirect_to @notify_center, notice: 'Notify center was successfully created.' }
        format.json { render json: @notify_center, status: :created, location: @notify_center }
      else
        format.html { render action: "new" }
        format.json { render json: @notify_center.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /notify_centers/1
  # PUT /notify_centers/1.json
  def update
    @notify_center = NotifyCenter.find(params[:id])

    respond_to do |format|
      if @notify_center.update_attributes(params[:notify_center])
        format.html { redirect_to @notify_center, notice: 'Notify center was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @notify_center.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /notify_centers/1
  # DELETE /notify_centers/1.json
  def destroy
    @notify_center = NotifyCenter.find(params[:id])
    @notify_center.destroy

    respond_to do |format|
      format.html { redirect_to notify_centers_url }
      format.json { head :no_content }
    end
  end
end
