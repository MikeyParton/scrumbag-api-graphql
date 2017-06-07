QueryType = GraphQL::ObjectType.define do
  name 'Query'
  description 'The query root for this schema'

  field :list do
    type ListType
    argument :id, !types.ID
    resolve -> (obj, args, ctx) {
      List.find(args[:id])
    }
  end

  field :card do
    type CardType
    argument :id, !types.ID
    resolve -> (obj, args, ctx) {
      Card.find(args[:id])
    }
  end
end