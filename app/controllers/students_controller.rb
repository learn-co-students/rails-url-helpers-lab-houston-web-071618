class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :edit]

  def index
    @students = Student.all
  end

  def show
  end


  def activate
  # find the student id

  @student = Student.find(params[:id])
  @student.active = !@student.active
  @student.save
  redirect_to student_path(@student)

  # @student = Student.find(params[:id])
  # @student.update(params[:student])
  # @student.save
  # redirect_to student_path(@student)
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end
