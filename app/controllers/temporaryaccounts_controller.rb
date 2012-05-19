class TemporaryaccountsController < ApplicationController
  # GET /temporaryaccounts
  # GET /temporaryaccounts.json
  def index
    @temporaryaccounts = Temporaryaccount.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @temporaryaccounts }
    end
  end

  # GET /temporaryaccounts/1
  # GET /temporaryaccounts/1.json
  def show
    @temporaryaccount = Temporaryaccount.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @temporaryaccount }
    end
  end

  # GET /temporaryaccounts/new
  # GET /temporaryaccounts/new.json
  def new
    @temporaryaccount = Temporaryaccount.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @temporaryaccount }
    end
  end

  # GET /temporaryaccounts/1/edit
  def edit
    @temporaryaccount = Temporaryaccount.find(params[:id])
  end

  # POST /temporaryaccounts
  # POST /temporaryaccounts.json
  def create
    @temporaryaccount = Temporaryaccount.new(params[:temporaryaccount])

    respond_to do |format|
      if @temporaryaccount.save
        format.html { redirect_to @temporaryaccount, notice: 'Temporaryaccount was successfully created.' }
        format.json { render json: @temporaryaccount, status: :created, location: @temporaryaccount }
      else
        format.html { render action: "new" }
        format.json { render json: @temporaryaccount.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /temporaryaccounts/1
  # PUT /temporaryaccounts/1.json
  def update
    @temporaryaccount = Temporaryaccount.find(params[:id])

    respond_to do |format|
      if @temporaryaccount.update_attributes(params[:temporaryaccount])
        format.html { redirect_to @temporaryaccount, notice: 'Temporaryaccount was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @temporaryaccount.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /temporaryaccounts/1
  # DELETE /temporaryaccounts/1.json
  def destroy
    @temporaryaccount = Temporaryaccount.find(params[:id])
    @temporaryaccount.destroy

    respond_to do |format|
      format.html { redirect_to temporaryaccounts_url }
      format.json { head :no_content }
    end
  end
end
