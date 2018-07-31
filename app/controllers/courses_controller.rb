class CoursesController < ApplicationController

  def index
    # Course.create!(title:"Course 1",description:"Maths course")
    # Course.create!(title:"Course 2",description:"Maths course 2")
    @courses = Course.all
    @message = 'Hello!'
  end

  def show
    @course = Course.find(params[:id])
  end
end
