class MemberDetsController < ApplicationController
  # GET /member_dets
  # GET /member_dets.json
  def index
    @member_dets = MemberDet.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @member_dets }
    end
  end

  # GET /member_dets/1
  # GET /member_dets/1.json
  def show
    @member_det = MemberDet.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @member_det }
    end
  end

  # GET /member_dets/new
  # GET /member_dets/new.json
  def new
    @member_det = MemberDet.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @member_det }
    end
  end

  # GET /member_dets/1/edit
  def edit
    @member_det = MemberDet.find(params[:id])
  end

  # POST /member_dets
  # POST /member_dets.json
  def create
    @member_det = MemberDet.new(params[:member_det])

    respond_to do |format|
      if @member_det.save
        format.html { redirect_to @member_det, notice: 'Member det was successfully created.' }
        format.json { render json: @member_det, status: :created, location: @member_det }
      else
        format.html { render action: "new" }
        format.json { render json: @member_det.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /member_dets/1
  # PUT /member_dets/1.json
  def update
    @member_det = MemberDet.find(params[:id])

    respond_to do |format|
      if @member_det.update_attributes(params[:member_det])
        format.html { redirect_to @member_det, notice: 'Member det was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @member_det.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /member_dets/1
  # DELETE /member_dets/1.json
  def destroy
    @member_det = MemberDet.find(params[:id])
    @member_det.destroy

    respond_to do |format|
      format.html { redirect_to member_dets_url }
      format.json { head :no_content }
    end
  end
end
