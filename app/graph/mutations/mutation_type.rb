MutationType = GraphQL::ObjectType.define do
  name 'Mutation'
  description 'The mutation root for this schema'
  field :addList, field: ListMutations::AddListMutation.field
end