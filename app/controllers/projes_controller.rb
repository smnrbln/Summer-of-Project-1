#encoding: utf-8
class ProjesController < ApplicationController
  load_and_authorize_resource
  # GET /projes
  # GET /projes.json
  def index
    @projes = Proje.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @projes }
    end
  end

  # GET /projes/1
  # GET /projes/1.json
  def show
    @proje = Proje.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @proje }
    end
  end

  # GET /projes/new
  # GET /projes/new.json
  def new
    @proje = Proje.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @proje }
    end
  end

  # GET /projes/1/edit
  def edit
    @proje = Proje.find(params[:id])
  end

  # POST /projes
  # POST /projes.json
  def create
    @proje = Proje.new(params[:proje])
    @proje.user = current_user

    respond_to do |format|
      if @proje.save
        format.html { redirect_to @proje, notice: 'Proje was successfully created.' }
        format.json { render json: @proje, status: :created, location: @proje }
      else
        format.html { render action: "new" }
        format.json { render json: @proje.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /projes/1
  # PUT /projes/1.json
  def update
    @proje = Proje.find(params[:id])
    @proje.user = current_user

    respond_to do |format|
      if @proje.update_attributes(params[:proje])
        format.html { redirect_to @proje, notice: 'Proje was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @proje.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /projes/1
  # DELETE /projes/1.json
  def destroy
    @proje = Proje.find(params[:id])
    @proje.destroy

    respond_to do |format|
      format.html { redirect_to projes_url }
      format.json { head :no_content }
    end
  end
end
