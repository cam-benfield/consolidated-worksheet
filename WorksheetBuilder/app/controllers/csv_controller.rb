class CsvController < ApplicationController
  def index
    @worksheet = Worksheet.all
  end

  def new
    @worksheet = Worksheet.new
  end

  def create
    @worksheet = Worksheet.new(worksheet_params)

    if @worksheet.save
      redirect_to worksheets_path, notice: "The worksheet #{@worksheet.name} has been uploaded."
    else
      render "new"
    end
  end

  def destroy
    @worksheet = Worksheet.find(params[:id])
    @worksheet.destroy
    redirect_to worksheets_path, notice:"The worksheet #{@worksheet.name} has been deleted."
  end

  private
    def worksheet_params
      params.require(:worksheet).permit(:name, :attachment)
end
