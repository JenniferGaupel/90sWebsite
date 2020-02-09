class class Api::V1::GuestbookMessagesController < ApplicationController
  before_action :set_guestbook_message, only: [:show, :edit, :update, :destroy]

  # GET /guestbook_messages
  # GET /guestbook_messages.json
  def index
    @guestbook_messages = GuestbookMessage.all
  end

  # GET /guestbook_messages/1
  # GET /guestbook_messages/1.json
  def show
  end

  # GET /guestbook_messages/new
  def new
    @guestbook_message = GuestbookMessage.new
  end

  # GET /guestbook_messages/1/edit
  def edit
  end

  # POST /guestbook_messages
  # POST /guestbook_messages.json
  def create
    @guestbook_message = GuestbookMessage.new(guestbook_message_params)

    respond_to do |format|
      if @guestbook_message.save
        format.html { redirect_to @guestbook_message, notice: 'Guestbook message was successfully created.' }
        format.json { render :show, status: :created, location: @guestbook_message }
      else
        format.html { render :new }
        format.json { render json: @guestbook_message.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /guestbook_messages/1
  # PATCH/PUT /guestbook_messages/1.json
  def update
    respond_to do |format|
      if @guestbook_message.update(guestbook_message_params)
        format.html { redirect_to @guestbook_message, notice: 'Guestbook message was successfully updated.' }
        format.json { render :show, status: :ok, location: @guestbook_message }
      else
        format.html { render :edit }
        format.json { render json: @guestbook_message.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /guestbook_messages/1
  # DELETE /guestbook_messages/1.json
  def destroy
    @guestbook_message.destroy
    respond_to do |format|
      format.html { redirect_to guestbook_messages_url, notice: 'Guestbook message was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_guestbook_message
      @guestbook_message = GuestbookMessage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def guestbook_message_params
      params.require(:guestbook_message).permit(:name, :message)
    end
end
