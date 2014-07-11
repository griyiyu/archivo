class FileRecordsController < ApplicationController
  before_action :set_file_record, only: [:show, :edit, :update, :destroy]

  # GET /file_records
  # GET /file_records.json
  def index
    @file_records = FileRecord.all
  end

  # GET /file_records/1
  # GET /file_records/1.json
  def show
    #definir @step para poder usarlo en el form del show
    @step = @file_record.steps.build
  end

  # GET /file_records/new
  def new
    @file_record = FileRecord.new
  end

  # GET /file_records/1/edit
  def edit
  end

  # POST /file_records
  # POST /file_records.json
  def create
    @file_record = FileRecord.new(file_record_params)

    respond_to do |format|
      if @file_record.save
        #office = Office.first!
        #@file_record.steps.create!({ :office => office })
        #@file_record.save_step 
        format.html { redirect_to @file_record, notice: 'File record was successfully created.' }
        format.json { render :show, status: :created, location: @file_record }
      else
        format.html { render :new }
        format.json { render json: @file_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /file_records/1
  # PATCH/PUT /file_records/1.json
  def update
    respond_to do |format|
      if @file_record.update(file_record_params)
        format.html { redirect_to @file_record, notice: 'File record was successfully updated.' }
        format.json { render :show, status: :ok, location: @file_record }
      else
        format.html { render :edit }
        format.json { render json: @file_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /file_records/1
  # DELETE /file_records/1.json
  def destroy
    @file_record.destroy
    respond_to do |format|
      format.html { redirect_to file_records_url, notice: 'File record was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_file_record
      @file_record = FileRecord.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def file_record_params
      params.require(:file_record).permit(:title)
    end
    
    def set_user
      @user = 'usuario'
    end
end
