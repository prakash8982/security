class PstaffsController < ApplicationController
 before_action :set_pstaff, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!,expect: [:show,:index]
  # GET /pstaffs
  # GET /pstaffs.json
  def index
    @pstaffs = current_user.pstaffs
  end

  # GET /pstaffs/1
  # GET /pstaffs/1.json
  def show

     
  end
  #for user
  def showuser
    @pstaff = Pstaff.find(params[:id])
    
  end
  # GET /pstaffs/new
  

  def new
    @pstaff = current_user.pstaffs.build
  end

  # GET /pstaffs/1/edit
  def edit
  end

  # POST /pstaffs
  # POST /pstaffs.json
  def create
    @pstaff = current_user.pstaffs.build(pstaff_params)

    respond_to do |format|
      if @pstaff.save
        format.html { redirect_to @pstaff, notice: 'Pstaff was successfully created.' }
        format.json { render :user, status: :created, location: @pstaff }
      else
        format.html { render :new }
        format.json { render json: @pstaff.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pstaffs/1
  # PATCH/PUT /pstaffs/1.json
  def update
    respond_to do |format|
      if @pstaff.update(pstaff_params)
        format.html { redirect_to @pstaff, notice: 'Pstaff was successfully updated.' }
        format.json { render :show, status: :ok, location: @pstaff }
      else
        format.html { render :edit }
        format.json { render json: @pstaff.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pstaffs/1
  # DELETE /pstaffs/1.json
  def destroy
    @pstaff.destroy
    respond_to do |format|
      format.html { redirect_to pstaffs_url, notice: 'Pstaff was successfully destroyed.' }
      format.json { head :no_content }
    end
   end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pstaff
      @pstaff = Pstaff.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pstaff_params
      params.require(:pstaff).permit(:name, :gender, :mobile_no, :department, :address, :vehical_type, :registration_certificate, :aadhaar_card)
    end
end
