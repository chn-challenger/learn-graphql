Types::QueryType = GraphQL::ObjectType.define do
  name "Query"
  # Add root-level fields here.
  # They will be entry points for queries on your schema.

  field :testField, types.String do
    description "An example field added by the generator"
    resolve ->(obj, args, ctx) {
      "Hello World!"
    }
  end

  field :testField2, types.String do
    description "An example field added by the generator"
    resolve ->(obj, args, ctx) {
      "Helloasdfasdf World!"
    }
  end

  field :course, Types::CourseType do
    description "Single course"
    argument :id, types.String
    resolve ->(obj, args, ctx) {
      Course.find(args[:id])
    }
  end


  field :unit, Types::UnitType do
    description "Single unit"
    argument :id, types.String
    resolve ->(obj, args, ctx) {
      Unit.find(args[:id])
    }
  end

  field :courses, types[Types::CourseType] do
    description "All courses"
    resolve ->(obj, args, ctx) {
      # puts '&&&&&&&&&&'
      # p obj
      # p Course.all
      # puts '&&&&&&&&&&'
      Course.all
    }
  end
end
