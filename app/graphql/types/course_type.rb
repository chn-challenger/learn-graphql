Types::CourseType = GraphQL::ObjectType.define do
  name "Course"
  description "a course"

  field :id, !types.Int
  field :title, !types.String
  field :description, !types.String
end
