class ViaturasController < ApplicationController
  # GET /viaturas
  # GET /viaturas.json
  def index
    @viaturas = Viatura.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @viaturas }
    end
  end

  # GET /viaturas/1
  # GET /viaturas/1.json
  def show
    @viatura = Viatura.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @viatura }
    end
  end

  # GET /viaturas/new
  # GET /viaturas/new.json
  def new
    @viatura = Viatura.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @viatura }
    end
  end

  # GET /viaturas/1/edit
  def edit
    @viatura = Viatura.find(params[:id])
  end

  # POST /viaturas
  # POST /viaturas.json
  def create
    @viatura = Viatura.new(params[:viatura])

    respond_to do |format|
      if @viatura.save
        format.html { redirect_to @viatura, notice: 'Viatura was successfully created.' }
        format.json { render json: @viatura, status: :created, location: @viatura }
      else
        format.html { render action: "new" }
        format.json { render json: @viatura.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /viaturas/1
  # PUT /viaturas/1.json
  def update
    @viatura = Viatura.find(params[:id])

    respond_to do |format|
      if @viatura.update_attributes(params[:viatura])
        format.html { redirect_to @viatura, notice: 'Viatura was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @viatura.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /viaturas/1
  # DELETE /viaturas/1.json
  def destroy
    @viatura = Viatura.find(params[:id])
    @viatura.destroy

    respond_to do |format|
      format.html { redirect_to viaturas_url }
      format.json { head :no_content }
    end
  end
end
