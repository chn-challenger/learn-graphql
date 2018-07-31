Types::CourseType = GraphQL::ObjectType.define do
  name "Course"
  description "a course"

  field :id, !types.Int
  field :title, !types.String
  field :description, !types.String

  field :units, types[Types::UnitType] do
    description "All courses"
    resolve ->(obj, args, ctx) {
      obj.units
    }
  end
end
