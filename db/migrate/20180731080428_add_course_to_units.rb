class AddCourseToUnits < ActiveRecord::Migration[5.1]
  def change
    add_reference :units, :course, foreign_key: true
  end
end
