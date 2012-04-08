class GenotypesController < ApplicationController
  before_filter :authenticate_user!
  
  # GET /genotypes
  # GET /genotypes.json
  def index
    @genotypes = Genotype.paginate(:page => params[:page], :per_page => 10)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @genotypes }
    end
  end

  # GET /genotypes/1
  # GET /genotypes/1.json
  def show
    @genotype = Genotype.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @genotype }
    end
  end

  # GET /genotypes/new
  # GET /genotypes/new.json
  def new
    @genotype = Genotype.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @genotype }
    end
  end

  # GET /genotypes/1/edit
  def edit
    @genotype = Genotype.find(params[:id])
  end

  # POST /genotypes
  # POST /genotypes.json
  def create
    @genotype = Genotype.new(params[:genotype])

    respond_to do |format|
      if @genotype.save
        format.html { redirect_to @genotype, notice: 'Genotype was successfully created.' }
        format.json { render json: @genotype, status: :created, location: @genotype }
      else
        format.html { render action: "new" }
        format.json { render json: @genotype.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /genotypes/1
  # PUT /genotypes/1.json
  def update
    @genotype = Genotype.find(params[:id])

    respond_to do |format|
      if @genotype.update_attributes(params[:genotype])
        format.html { redirect_to @genotype, notice: 'Genotype was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @genotype.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /genotypes/1
  # DELETE /genotypes/1.json
  def destroy
    @genotype = Genotype.find(params[:id])
    @genotype.destroy

    respond_to do |format|
      format.html { redirect_to genotypes_url }
      format.json { head :ok }
    end
  end
end
