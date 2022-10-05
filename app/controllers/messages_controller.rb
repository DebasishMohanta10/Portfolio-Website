class MessagesController < ApplicationController
  def create
    @message = Message.new(message_params)

    if @message.save
      flash[:success] = "Message sent successfully."
      redirect_to contact_url
    else
      flash.now[:error] = "Something Went Wrong!"
      redirect_to contact_url
    end
  end

  private
    def message_params
      params.require(:message).permit(:first_name,:last_name,:email,:message)
    end
end
