class LeadsController < ApplicationController
  def create
    @lead = Lead.new(lead_params)
    if @lead.save

    else

    end
  end

  def new
    @lead = Lead.new
  end

  private

  def lead_params
    params.require(:lead).permit(:email, :phone, :country)
  end

end
