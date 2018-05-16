class StudentsController < ApplicationController
  before_action :set_departments, only: [:index, :search]
  
  def index
    @q = Student.ransack(params[:q])
    # @students = @q.result(distinct: true)

    # 用 set_departments 來替代
    # 否則在搜尋後會出現 nil Class 錯誤
    #@departments = Department.all

    # solved n+1
    @students = @q.result.includes(:department, :subjects)
  end

  def search
    @q = Student.search(search_params)

    puts "SEARCH_PARAMS"
    
    puts search_params

    # @students = @q.result(distinct: true)
    # solved n+1
    @students = @q.result.includes(:department, :subjects)
  end

  private
  def search_params
    #params.require(:q).permit!
    params.require(:q).permit(:name_cont, :department_id_eq)
    
  end

  def set_departments
    @departments = Department.all
  end
end
