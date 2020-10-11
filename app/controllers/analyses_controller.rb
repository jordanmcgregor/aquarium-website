class AnalysesController < ApplicationController
  before_action :set_analysis, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:new, :edit, :update, :destroy]
  before_action :authenticate_admin, only: [:new, :edit, :update, :destroy]

  def authenticate_admin
    redirect_to '/', alert: 'Not authorized.' unless current_user && access_whitelist
  end

  # GET /analyses
  # GET /analyses.json
  def index
    @analyses = Analysis.all
  end

  # GET /analyses/1
  # GET /analyses/1.json
  def show
    @analysis =  Analysis.friendly.find(params[:id])
  end

  # GET /analyses/new
  def new
    @analysis = Analysis.new
  end

  # GET /analyses/1/edit
  def edit
  end

  # POST /analyses
  # POST /analyses.json
  def create
    @analysis = Analysis.new(analysis_params)

    respond_to do |format|
      if @analysis.save
        format.html { redirect_to @analysis, notice: 'Analysis was successfully created.' }
        format.json { render :show, status: :created, location: @analysis }
      else
        format.html { render :new }
        format.json { render json: @analysis.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /analyses/1
  # PATCH/PUT /analyses/1.json
  def update
    respond_to do |format|
      if @analysis.update(analysis_params)
        format.html { redirect_to @analysis, notice: 'Analysis was successfully updated.' }
        format.json { render :show, status: :ok, location: @analysis }
      else
        format.html { render :edit }
        format.json { render json: @analysis.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /analyses/1
  # DELETE /analyses/1.json
  def destroy
    @analysis.destroy
    respond_to do |format|
      format.html { redirect_to analyses_url, notice: 'Analysis was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_analysis
      @analysis = Analysis.friendly.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def analysis_params
      params.require(:analysis).permit(:seo_title, :seo_meta_description, :analysis_article_image, :analysis_article_title, :introduction, :title1, :image_link1, :affiliate_link1, :summary1, :highlight1_1_short, :highlight1_2_short, :highlight1_3_short, :highlight1_1, :highlight1_2, :highlight1_3, :highlight1_4, :highlight1_5, :synopsis1, :title2, :image_link2, :affiliate_link2, :summary2, :highlight2_1_short, :highlight2_2_short, :highlight2_3_short, :highlight2_1, :highlight2_2, :highlight2_3, :highlight2_4, :highlight2_5, :synopsis2, :title3, :image_link3, :affiliate_link3, :summary3, :highlight3_1_short, :highlight3_2_short, :highlight3_3_short, :highlight3_1, :highlight3_2, :highlight3_3, :highlight3_4, :highlight3_5, :synopsis3, :title4, :image_link4, :affiliate_link4, :summary4, :highlight4_1, :highlight4_2, :highlight4_3, :highlight4_4, :highlight4_5, :synopsis4, :title5, :image_link5, :affiliate_link5, :summary5, :highlight5_1, :highlight5_2, :highlight5_3, :highlight5_4, :highlight5_5, :synopsis5, :title6, :image_link6, :affiliate_link6, :summary6, :highlight6_1, :highlight6_2, :highlight6_3, :highlight6_4, :highlight6_5, :synopsis6, :title7, :image_link7, :affiliate_link7, :summary7, :highlight7_1, :highlight7_2, :highlight7_3, :highlight7_4, :highlight7_5, :synopsis7, :title8, :image_link8, :affiliate_link8, :summary8, :highlight8_1, :highlight8_2, :highlight8_3, :highlight8_4, :highlight8_5, :synopsis8, :title9, :image_link9, :affiliate_link9, :summary9, :highlight9_1, :highlight9_2, :highlight9_3, :highlight9_4, :highlight9_5, :synopsis9, :title10, :image_link10, :affiliate_link10, :summary10, :highlight10_1, :highlight10_2, :highlight10_3, :highlight10_4, :highlight10_5, :synopsis10, :buyers_guide, :expert_tip, :did_you_know, :conclusion)
    end

    def access_whitelist
      current_user.try(:admin?) || current_user.try(:door_super?)
    end
end
