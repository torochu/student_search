class StudentsController < ApplicationController
  def index
    @q = Student.ransack(params[:q])
    # @students = @q.result(distinct: true)
    # solved n+1
    @students = @q.result.includes(:department, :subjects)
  end

  def search
    @q = Student.search(search_params)
    # @students = @q.result(distinct: true)
    # solved n+1
    @students = @q.result.includes(:department, :subjects)
  end

  private
  def search_params
    #params.require(:q).permit!
    params.require(:q).permit(:name_cont)
  end
end
