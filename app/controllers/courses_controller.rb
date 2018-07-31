class CoursesController < ApplicationController

  def index
    # Course.create!(title:"Course 1",description:"Maths course")
    # Course.create!(title:"Course 2",description:"Maths course 2")
    @courses = Course.all
    @message = 'Hello!'
  end

  def show
    @course = Course.find(params[:id])
    # p @course.units
    # @course.units.create!(title:"Unit #{rand().round(3)}",
    #   description:"Unit description #{'abc '*rand(10..20)}")
    # @course.units.create!(title:"Unit #{rand().round(3)}",
    #   description:"Unit description #{'abc '*rand(10..20)}")
    @course
  end
end
