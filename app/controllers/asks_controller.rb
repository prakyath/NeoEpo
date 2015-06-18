class AsksController < ApplicationController
  before_action :set_ask, only: [:show, :edit, :update, :destroy]

  # GET /asks
  # GET /asks.json
  def index
    @asks = Ask.all
  end

  # GET /asks/1
  # GET /asks/1.json
  def show
  end

  # GET /asks/new
  def new
    @ask = Ask.new
  end

  # GET /asks/1/edit
  def edit
  end

  # POST /asks
  # POST /asks.json
  def create
    @ask = Ask.new(ask_params)

  
      if @ask.save
        flash[:success] = "thankyou,we will get in touch with you soon!"

       
       # format.html { redirect_to @ask, notice: 'Ask was successfully created.' }
        #format.json { render :show, status: :created, location: @ask }
      else
        flash[:error] = @ask.errors.empty? ? "Error" :  "Error! #{@ask.errors.full_messages.to_sentence}".html_safe 
        
        #format.html { render :new }
       # format.json { render json: @ask.errors, status: :unprocessable_entity }
      end
     redirect_to(:back)
  end

  # PATCH/PUT /asks/1
  # PATCH/PUT /asks/1.json
  def update
    respond_to do |format|
      if @ask.update(ask_params)
        format.html { redirect_to @ask, notice: 'Ask was successfully updated.' }
        format.json { render :show, status: :ok, location: @ask }
      else
        format.html { render :edit }
        format.json { render json: @ask.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /asks/1
  # DELETE /asks/1.json
  def destroy
    @ask.destroy
    respond_to do |format|
      format.html { redirect_to asks_url, notice: 'Ask was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ask
      @ask = Ask.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ask_params
      params.require(:ask).permit(:subject, :message, :email, :phone)
    end
end
