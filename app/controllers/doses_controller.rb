class DosesController < ApplicationController

  # Add a new dose (ingredient/description pair)
  def new
    @dose = Dose.new
  end

  def create
    dose = Dose.new(dose_params)
    dose.save

  end

  #Delete a dose

  def delete
  end

private

  def dose_params
    params_require(:dose).permit(:description)
  end

end
