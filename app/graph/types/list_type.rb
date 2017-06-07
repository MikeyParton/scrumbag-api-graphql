ListType = GraphQL::ObjectType.define do
  name 'List'
  description 'A list'

  field :id, types.ID
  field :title, types.String
  field :cards do
    type types[CardType]
    resolve -> (list, args, ctx) {
      list.cards
    }
  end
end