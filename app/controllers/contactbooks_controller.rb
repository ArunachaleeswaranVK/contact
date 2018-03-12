class ContactbooksController < ApplicationController
  before_action :set_contactbook, only: [:show, :edit, :update, :destroy]

  # GET /contactbooks
  # GET /contactbooks.json
  def index
    @contactbooks = Contactbook.all
  end

  # GET /contactbooks/1
  # GET /contactbooks/1.json
  def show
  end

  # GET /contactbooks/new
  def new
    @contactbook = Contactbook.new
  end

  # GET /contactbooks/1/edit
  def edit
  end

  # POST /contactbooks
  # POST /contactbooks.json
  def create
    @contactbook = Contactbook.new(contactbook_params)

    respond_to do |format|
      if @contactbook.save
        format.html { redirect_to @contactbook, notice: 'Contactbook was successfully created.' }
        format.json { render :show, status: :created, location: @contactbook }
      else
        format.html { render :new }
        format.json { render json: @contactbook.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /contactbooks/1
  # PATCH/PUT /contactbooks/1.json
  def update
    respond_to do |format|
      if @contactbook.update(contactbook_params)
        format.html { redirect_to @contactbook, notice: 'Contactbook was successfully updated.' }
        format.json { render :show, status: :ok, location: @contactbook }
      else
        format.html { render :edit }
        format.json { render json: @contactbook.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contactbooks/1
  # DELETE /contactbooks/1.json
  def destroy
    @contactbook.destroy
    respond_to do |format|
      format.html { redirect_to contactbooks_url, notice: 'Contactbook was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contactbook
      @contactbook = Contactbook.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def contactbook_params
      params.require(:contactbook).permit(:name, :address, :city, :phone, :email)
    end
end
