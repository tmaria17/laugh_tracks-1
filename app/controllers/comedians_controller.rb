class ComediansController < ApplicationController
  def index
    if params[:age]
      @comedians= Comedian.get_age(params[:age])
    elsif params[:age] == nil
      @comedians = Comedian.all
    end
  end

  private
  def comedian_params
    params.require(:comedian).permit(:name, :thumbnail, :age, :city)
  end
end
