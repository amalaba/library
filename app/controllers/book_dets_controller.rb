class BookDetsController < ApplicationController
  # GET /book_dets
  # GET /book_dets.json
  def index
    puts "hellooooooooooo m here********"
    @book_dets = BookDet.all
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @book_dets }
    end
  end

  # GET /book_dets/1
  # GET /book_dets/1.json
  def show
    @book_det = BookDet.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @book_det }
    end
  end

  # GET /book_dets/new
  # GET /book_dets/new.json
  def new
    @book_det = BookDet.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @book_det }
    end
  end

  # GET /book_dets/1/edit
  def edit
    @book_det = BookDet.find(params[:id])
  end
  
  def reserve
    @book_det = BookDet.find(params[:id])
    respond_to do |format|
      if @book_det.available
        !@book_det.available
        format.html { redirect_to @book_det, notice: 'book was succesfully reserved'}
        format.json { render json: @book_det}
      else 
        format.html { redirect_to @book_det, notice: 'sorry the book is not available'}
        format.json { render json: @book_det}
      end
    end
  end
  # POST /book_dets
  # POST /book_dets.json
  def create
    @book_det = BookDet.new(params[:book_det])
    respond_to do |format|
      if @book_det.save
        format.html { redirect_to @book_det, notice: 'Book det was successfully created.' }
        format.json { render json: @book_det, status: :created, location: @book_det }
      else
        format.html { render action: "new" }
        format.json { render json: @book_det.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /book_dets/1
  # PUT /book_dets/1.json
  def update
    @book_det = BookDet.find(params[:id])

    respond_to do |format|
      if @book_det.update_attributes(params[:book_det])
        format.html { redirect_to @book_det, notice: 'Book det was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @book_det.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /book_dets/1
  # DELETE /book_dets/1.json
  def destroy
    @book_det = BookDet.find(params[:id])
    @book_det.destroy

    respond_to do |format|
      format.html { redirect_to book_dets_url }
      format.json { head :no_content }
    end
  end
end
