class DosesController < ApplicationController
  def new
    @dose = Dose.new
  end

  def create
    @dose = Dose.create(dose_params)
    redirect_to dose_path(@dose)
  end

  def destroy
    @dose.destroy
    redirect_to doses_path
  end
end
