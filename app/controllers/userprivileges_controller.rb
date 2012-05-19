class UserprivilegesController < ApplicationController
  # GET /userprivileges
  # GET /userprivileges.json
  def index
    @userprivileges = Userprivilege.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @userprivileges }
    end
  end

  # GET /userprivileges/1
  # GET /userprivileges/1.json
  def show
    @userprivilege = Userprivilege.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @userprivilege }
    end
  end

  # GET /userprivileges/new
  # GET /userprivileges/new.json
  def new
    @userprivilege = Userprivilege.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @userprivilege }
    end
  end

  # GET /userprivileges/1/edit
  def edit
    @userprivilege = Userprivilege.find(params[:id])
  end

  # POST /userprivileges
  # POST /userprivileges.json
  def create
    @userprivilege = Userprivilege.new(params[:userprivilege])

    respond_to do |format|
      if @userprivilege.save
        format.html { redirect_to @userprivilege, notice: 'Userprivilege was successfully created.' }
        format.json { render json: @userprivilege, status: :created, location: @userprivilege }
      else
        format.html { render action: "new" }
        format.json { render json: @userprivilege.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /userprivileges/1
  # PUT /userprivileges/1.json
  def update
    @userprivilege = Userprivilege.find(params[:id])

    respond_to do |format|
      if @userprivilege.update_attributes(params[:userprivilege])
        format.html { redirect_to @userprivilege, notice: 'Userprivilege was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @userprivilege.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /userprivileges/1
  # DELETE /userprivileges/1.json
  def destroy
    @userprivilege = Userprivilege.find(params[:id])
    @userprivilege.destroy

    respond_to do |format|
      format.html { redirect_to userprivileges_url }
      format.json { head :no_content }
    end
  end
end
