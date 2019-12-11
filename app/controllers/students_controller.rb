class StudentsController < ApplicationController
  
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
  end

  def create
  @student = Student.new
  #@post.title = params[:title]
  #@post.description = params[:description]
  @student.save
  redirect_to post_student(@student)
end

end
