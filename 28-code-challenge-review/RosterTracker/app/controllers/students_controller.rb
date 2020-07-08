class StudentsController < ApplicationController
  def index
    @students = Student.sort
    # @students = @students.sort_by {|student| student.grade}
  end


  def show
    @student = Student.find(params[:id])
    render :show
  end

  def new
    @student = Student.new
    render :new
  end

  def create
    @student = Student.new(student_params)
    if @student.valid?
      @student.save
      redirect_to student_path(@student) # www.myapp.com/students/27
    else
      render :new
    end
  end

  def edit
    @student = Student.find(params[:id])
  end

  def update
    @student = Student.find(params[:id])
    @student.update(student_params)
    redirect_to student_path(@student)
  end

  def destroy
    Student.destroy(params[:id])
    redirect_to students_path
  end

  private

  def student_params
    params.require(:student).permit(:grade, :name, :course_ids => [])
  end
end
