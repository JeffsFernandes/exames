class MutationsController < ApplicationController
  before_filter :authenticate_user!
  
  # GET /mutations
  # GET /mutations.json
  def index
    @mutations = Mutation.paginate(:page => params[:page], :per_page => 10)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @mutations }
    end
  end

  # GET /mutations/1
  # GET /mutations/1.json
  def show
    @mutation = Mutation.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @mutation }
    end
  end

  # GET /mutations/new
  # GET /mutations/new.json
  def new
    @mutation = Mutation.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @mutation }
    end
  end

  # GET /mutations/1/edit
  def edit
    @mutation = Mutation.find(params[:id])
  end

  # POST /mutations
  # POST /mutations.json
  def create
    @mutation = Mutation.new(params[:mutation])

    respond_to do |format|
      if @mutation.save
        format.html { redirect_to @mutation, notice: 'Mutation was successfully created.' }
        format.json { render json: @mutation, status: :created, location: @mutation }
      else
        format.html { render action: "new" }
        format.json { render json: @mutation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /mutations/1
  # PUT /mutations/1.json
  def update
    @mutation = Mutation.find(params[:id])

    respond_to do |format|
      if @mutation.update_attributes(params[:mutation])
        format.html { redirect_to @mutation, notice: 'Mutation was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @mutation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mutations/1
  # DELETE /mutations/1.json
  def destroy
    @mutation = Mutation.find(params[:id])
    @mutation.destroy

    respond_to do |format|
      format.html { redirect_to mutations_url }
      format.json { head :ok }
    end
  end
end
