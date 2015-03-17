class AlcoholDrugsController < ApplicationController
  before_filter :auth_user

  def auth_user
    redirect_to new_user_registration_url unless user_signed_in?
  end

  before_action :set_alcohol_drug, only: [:show]

  # GET /alcohol_drugs
  # GET /alcohol_drugs.json
  def index
    @alcohol_drugs = AlcoholDrug.all
  end

  # GET /alcohol_drugs/1
  # GET /alcohol_drugs/1.json
  def show
  	flash[:notice] = 'Successfully added'
  	redirect_to url_for(:controller => :static_pages, :action => :home)
  end

  # GET /alcohol_drugs/new
  def new
    @alcohol_drug = AlcoholDrug.new
  end

  # GET /alcohol_drugs/1/edit
  def edit
  end

  # POST /alcohol_drugs
  # POST /alcohol_drugs.json
  def create
    @alcohol_drug = AlcoholDrug.new(alcohol_drug_params)

    respond_to do |format|
      if @alcohol_drug.save
        format.html { redirect_to @alcohol_drug, notice: 'Alcohol drug was successfully created.' }
        format.json { render :show, status: :created, location: @alcohol_drug }
      else
        format.html { render :new }
        format.json { render json: @alcohol_drug.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /alcohol_drugs/1
  # PATCH/PUT /alcohol_drugs/1.json
  def update
    respond_to do |format|
      if @alcohol_drug.update(alcohol_drug_params)
        format.html { redirect_to @alcohol_drug, notice: 'Alcohol drug was successfully updated.' }
        format.json { render :show, status: :ok, location: @alcohol_drug }
      else
        format.html { render :edit }
        format.json { render json: @alcohol_drug.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /alcohol_drugs/1
  # DELETE /alcohol_drugs/1.json
  def destroy
    @alcohol_drug.destroy
    respond_to do |format|
      format.html { redirect_to alcohol_drugs_url, notice: 'Alcohol drug was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_alcohol_drug
      @alcohol_drug = AlcoholDrug.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def alcohol_drug_params
      params.require(:alcohol_drug).permit(:alcohol_addicted, :drugs_adicted, :alcohol_type, :drugs_type, :alcohol_period, :drugs_period, :previous_treatment)
    end
end
