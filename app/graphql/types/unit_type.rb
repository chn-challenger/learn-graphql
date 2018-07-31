Types::UnitType = GraphQL::ObjectType.define do
  name "Unit"
  description "a unit"

  field :id, !types.Int
  field :title, !types.String
  field :description, !types.String
end
