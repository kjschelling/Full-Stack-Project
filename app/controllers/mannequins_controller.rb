class MannequinsController < ProtectedController
  before_action :set_mannequin, only: [:show, :update, :destroy]

  # GET /mannequins
  def index
    @mannequins = current_user.mannequins.all
    # binding.pry
    render json: @mannequins
  end

  # GET /mannequins/1
  def show
    render json: @mannequin
  end

  # POST /mannequins
  def create
    @mannequin = current_user.mannequins.new(mannequin_params)

    if @mannequin.save
      render json: @mannequin, status: :created, location: @mannequin
    else
      render json: @mannequin.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /mannequins/1
  def update
    if @mannequin.update(mannequin_params)
      render json: @mannequin
    else
      render json: @mannequin.errors, status: :unprocessable_entity
    end
  end

  # DELETE /mannequins/1
  def destroy
    @mannequin.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mannequin
      @mannequin = current_user.mannequins.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def mannequin_params
      params.require(:mannequin).permit(:given_name, :surname, :height, :weight, :measurements, :eye_color, :hair_color, :hair_length, :gender)
    end
end
