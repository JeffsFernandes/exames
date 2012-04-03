class ExaminationsController < ApplicationController

   before_filter :authenticate_user!

  # GET /examinations
  # GET /examinations.json
  def index
    @examinations = Examination.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @examinations }
    end
  end

  # GET /examinations/1
  # GET /examinations/1.json
  def show
    @examination = Examination.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @examination }
    end
  end

  # GET /examinations/new
  # GET /examinations/new.json
  def new
    @examination = Examination.new
	
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @examination }
    end
  end

  # GET /examinations/1/edit
  def edit
    @examination = Examination.find(params[:id])
  end

  # POST /examinations
  # POST /examinations.json
  def create
    puts "************************"
    params.each do |k,v|
      puts v
    end
    puts "************************"
    @examination = Examination.new(params[:examination])
    respond_to do |format|
      if @examination.save
        format.html { redirect_to @examination, notice: 'Examination was successfully created.' }
        format.json { render json: @examination, status: :created, location: @examination }
      else
        format.html { render action: "new" }
        format.json { render json: @examination.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /examinations/1
  # PUT /examinations/1.json
  def update
    @examination = Examination.find(params[:id])

    respond_to do |format|
      if @examination.update_attributes(params[:examination])
        format.html { redirect_to @examination, notice: 'Examination was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @examination.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /examinations/1
  # DELETE /examinations/1.json
  def destroy
    @examination = Examination.find(params[:id])
    @examination.destroy

    respond_to do |format|
      format.html { redirect_to examinations_url }
      format.json { head :ok }
    end
  end
  
  private
  
  def useDrugs
      if params[:useDrugs]
    		@drug_ids = params[:useDrugs] 
    	end
    	@drug_ids.each{|d| params[:druguse_ids] << @drug_ids} if @drug_ids
  end
end
