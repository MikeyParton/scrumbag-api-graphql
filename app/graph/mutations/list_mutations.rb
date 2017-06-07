module ListMutations
  AddListMutation = GraphQL::Relay::Mutation.define do
    name "AddListMutation"

    input_field :title, !types.String
    return_field :list, ListType
    return_field :errors, types.String

    resolve -> (obj, inputs, ctx) {
      new_list = List.new(title: inputs[:title])
      if new_list.save
        { list: new_list }
      else
        { errors: new_list.errors.to_a }
      end
    }
  end
end