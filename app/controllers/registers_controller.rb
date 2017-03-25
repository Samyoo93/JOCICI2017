class RegistersController < ApplicationController
  before_action :set_register, only: [:show, :edit, :update, :destroy]

  # GET /registers
  # GET /registers.json
  def index
    @registers = Register.all
  end

  # GET /registers/1
  # GET /registers/1.json
  def show
  end

  # GET /registers/new
  def new
    @register = Register.new
  end

  # GET /registers/1/edit
  def edit
  end

  # POST /registers
  # POST /registers.json
  def create
    @register = Register.new(register_params)
    @registers = Register.all
    respond_to do |format|
      # if recaptcha_valid?
      if @register.email =~ /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
        @database = @registers.where(email:@register.email).take
        if @database.nil?
          @register.save!
          format.html { redirect_to root_path, notice: 'Se registró correctamente' }
          format.json { render :show, status: :created, location: @register}
        end
        if !@database.nil?
          format.html { redirect_to root_path, alert: 'El correo solicitado ya está registrado' }
          format.json { render json: @register.errors, status: :unprocessable_entity }
        else
          format.html { redirect_to root_path, alert: 'No se ha podido guardar correctamente.' }
          format.json { render json: @register.errors, status: :unprocessable_entity }
        end
      else
        format.html { redirect_to root_path, alert: 'Formato del correo incorrecto.' }
        format.json { render json: @register.errors, status: :unprocessable_entity }
      end
    # else
    #   format.html { redirect_to root_path, alert: 'Recaptcha inválido' }
    #   format.json { render json: @register.errors, status: :unprocessable_entity }
    # end
    end
  end

  # PATCH/PUT /registers/1
  # PATCH/PUT /registers/1.json
  def update
    respond_to do |format|
      if @register.update(register_params)
        format.html { redirect_to @register, notice: 'Register was successfully updated.' }
        format.json { render :show, status: :ok, location: @register }
      else
        format.html { render :edit }
        format.json { render json: @register.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /registers/1
  # DELETE /registers/1.json
  def destroy
    @register.destroy
    respond_to do |format|
      format.html { redirect_to registers_url, notice: 'Register was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_register
      @register = Register.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def register_params
      params.require(:register).permit(:name, :lastName, :email)
    end
end
