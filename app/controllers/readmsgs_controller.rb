class ReadmsgsController < ApplicationController
  # GET /readmsgs
  # GET /readmsgs.json
  def index
    @readmsgs = Readmsg.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @readmsgs }
    end
  end

  # GET /readmsgs/1
  # GET /readmsgs/1.json
  def show
    @readmsg = Readmsg.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @readmsg }
    end
  end

  # GET /readmsgs/new
  # GET /readmsgs/new.json
  def new
    @readmsg = Readmsg.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @readmsg }
    end
  end

  # GET /readmsgs/1/edit
  def edit
    @readmsg = Readmsg.find(params[:id])
  end

  # POST /readmsgs
  # POST /readmsgs.json
  def create
    @readmsg = Readmsg.new(params[:readmsg])

    respond_to do |format|
      if @readmsg.save
        format.html { redirect_to @readmsg, notice: 'Readmsg was successfully created.' }
        format.json { render json: @readmsg, status: :created, location: @readmsg }
      else
        format.html { render action: "new" }
        format.json { render json: @readmsg.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /readmsgs/1
  # PUT /readmsgs/1.json
  def update
    @readmsg = Readmsg.find(params[:id])

    respond_to do |format|
      if @readmsg.update_attributes(params[:readmsg])
        format.html { redirect_to @readmsg, notice: 'Readmsg was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @readmsg.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /readmsgs/1
  # DELETE /readmsgs/1.json
  def destroy
    @readmsg = Readmsg.find(params[:id])
    @readmsg.destroy

    respond_to do |format|
      format.html { redirect_to readmsgs_url }
      format.json { head :no_content }
    end
  end
end
