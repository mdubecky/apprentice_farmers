class ApprenticesController < ApplicationController
  # GET /apprentices
  # GET /apprentices.json
  def index
    @apprentices = Apprentice.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @apprentices }
    end
  end

  # GET /apprentices/1
  # GET /apprentices/1.json
  def show
    @apprentice = Apprentice.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @apprentice }
    end
  end

  # GET /apprentices/new
  # GET /apprentices/new.json
  def new
    @apprentice = Apprentice.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @apprentice }
    end
  end

  # GET /apprentices/1/edit
  def edit
    @apprentice = Apprentice.find(params[:id])
  end

  # POST /apprentices
  # POST /apprentices.json
  def create
    @apprentice = Apprentice.new(params[:apprentice])

    respond_to do |format|
      if @apprentice.save
        format.html { redirect_to @apprentice, notice: 'Apprentice was successfully created.' }
        format.json { render json: @apprentice, status: :created, location: @apprentice }
      else
        format.html { render action: "new" }
        format.json { render json: @apprentice.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /apprentices/1
  # PUT /apprentices/1.json
  def update
    @apprentice = Apprentice.find(params[:id])

    respond_to do |format|
      if @apprentice.update_attributes(params[:apprentice])
        format.html { redirect_to @apprentice, notice: 'Apprentice was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @apprentice.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /apprentices/1
  # DELETE /apprentices/1.json
  def destroy
    @apprentice = Apprentice.find(params[:id])
    @apprentice.destroy

    respond_to do |format|
      format.html { redirect_to apprentices_url }
      format.json { head :no_content }
    end
  end
end
