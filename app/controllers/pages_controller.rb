class PagesController < ApplicationController
  def home
    @skip_footer = true
  end

  def about
    respond_to do |format|
      format.html { render :about }
    end
  end

  def contact
    @message = Message.new
  end

  def technical
  end

  def portfolio
  end

  def album
  end

  def blog
  end

end
