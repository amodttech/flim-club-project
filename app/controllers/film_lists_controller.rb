class FilmListsController < ApplicationController
  before_action :set_film_list, only: %i[ show edit update destroy ]

  # GET /film_lists or /film_lists.json
  def index
    @film_lists = FilmList.all
  end

  # GET /film_lists/1 or /film_lists/1.json
  def show
  end

  # GET /film_lists/new
  def new
    @film_list = FilmList.new
  end

  # GET /film_lists/1/edit
  def edit
  end

  # POST /film_lists or /film_lists.json
  def create
    @film_list = FilmList.new(film_list_params)

    respond_to do |format|
      if @film_list.save
        format.html { redirect_to @film_list, notice: "Film list was successfully created." }
        format.json { render :show, status: :created, location: @film_list }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @film_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /film_lists/1 or /film_lists/1.json
  def update
    respond_to do |format|
      if @film_list.update(film_list_params)
        format.html { redirect_to @film_list, notice: "Film list was successfully updated." }
        format.json { render :show, status: :ok, location: @film_list }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @film_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /film_lists/1 or /film_lists/1.json
  def destroy
    @film_list.destroy
    respond_to do |format|
      format.html { redirect_to film_lists_url, notice: "Film list was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_film_list
      @film_list = FilmList.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def film_list_params
      params.require(:film_list).permit(:group_id, :film_id, :date_discussed)
    end
end
