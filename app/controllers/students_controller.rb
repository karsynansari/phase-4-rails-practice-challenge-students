class StudentsController < ApplicationController
  def index
    students = Student.all
    render json: students
  end

  def show
  render json: find_student
  end

  def update
student = find_student
student.update!(student_params)
render json: student
  end 

  def destroy
student = find_student
student.destroy
render json: {message: "Delete successful"}
  end
 
  private

def student_params
params.permit(:name, :major, :age)
end

def find_student
student = Student.find(params[:id])
end
end
