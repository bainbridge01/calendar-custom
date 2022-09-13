class EngagementsController < ApplicationController
  before_action :set_engagement, only: %i[ show edit update destroy ]

  # GET /engagements or /engagements.json
  def index
    @engagements = Engagement.all
  end

  # GET /engagements/1 or /engagements/1.json
  def show
  end

  # GET /engagements/new
  def new
    @engagement = Engagement.new
  end

  # GET /engagements/1/edit
  def edit
  end

  # POST /engagements or /engagements.json
  def create
    @engagement = Engagement.new(engagement_params)

    respond_to do |format|
      if @engagement.save
        format.html { redirect_to engagement_url(@engagement), notice: "Engagement was successfully created." }
        format.json { render :show, status: :created, location: @engagement }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @engagement.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /engagements/1 or /engagements/1.json
  def update
    respond_to do |format|
      if @engagement.update(engagement_params)
        format.html { redirect_to engagement_url(@engagement), notice: "Engagement was successfully updated." }
        format.json { render :show, status: :ok, location: @engagement }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @engagement.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /engagements/1 or /engagements/1.json
  def destroy
    @engagement.destroy

    respond_to do |format|
      format.html { redirect_to engagements_url, notice: "Engagement was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_engagement
      @engagement = Engagement.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def engagement_params
      params.require(:engagement).permit(:title, :description, :start_time, :end_time)
    end
end
