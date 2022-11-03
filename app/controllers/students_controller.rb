class StudentsController < ApplicationController

  def index
   students = if params[:name] 
      # Student.all.filter do |student|
      #   if params[:name] == student.first_name || params[:name] == student.last_name
      #     return student
      #   end
      # end
      Student.by_name(params[:name])
    else
      Student.all
    end
    render json: students
  end

  def show
    student = Student.find(params[:id])
    render json: student
  end

  def bshow
    student = Student.find_by(last_name: params[:last_name])
    render json: student
  end



end
