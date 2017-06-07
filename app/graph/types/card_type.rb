CardType = GraphQL::ObjectType.define do
  name 'Card'
  description 'A card'

  field :id, types.ID
  field :title, types.String
  field :list do
    type types[ListType]
    resolve -> (card, args, ctx) {
      card.list
    }
  end
end