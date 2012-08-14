class InstrulifeListsController < ApplicationController
  
  
  
 
  
  
  # GET /instrulife_lists
  # GET /instrulife_lists.json
  def index
    @instrulife_lists = InstrulifeList.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @instrulife_lists }
    end
  end

  # GET /instrulife_lists/1
  # GET /instrulife_lists/1.json
  def show
    @instrulife_list = InstrulifeList.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @instrulife_list }
    end
  end

  # GET /instrulife_lists/new
  # GET /instrulife_lists/new.json
  def new
    @instrulife_list = InstrulifeList.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @instrulife_list }
    end
  end

  # GET /instrulife_lists/1/edit
  def edit
    @instrulife_list = InstrulifeList.find(params[:id])
  end

  # POST /instrulife_lists
  # POST /instrulife_lists.json
  def create
    @instrulife_list = InstrulifeList.new(params[:instrulife_list])

    respond_to do |format|
      if @instrulife_list.save
        format.html { redirect_to @instrulife_list, notice: 'Instrulife list was successfully created.' }
        format.json { render json: @instrulife_list, status: :created, location: @instrulife_list }
      else
        format.html { render action: "new" }
        format.json { render json: @instrulife_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /instrulife_lists/1
  # PUT /instrulife_lists/1.json
  def update
    @instrulife_list = InstrulifeList.find(params[:id])

    respond_to do |format|
      if @instrulife_list.update_attributes(params[:instrulife_list])
        format.html { redirect_to @instrulife_list, notice: 'Instrulife list was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @instrulife_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /instrulife_lists/1
  # DELETE /instrulife_lists/1.json
  def destroy
    @instrulife_list = InstrulifeList.find(params[:id])
    @instrulife_list.destroy

    respond_to do |format|
      format.html { redirect_to instrulife_lists_url }
      format.json { head :no_content }
    end
  end
end
