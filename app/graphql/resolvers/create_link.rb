class Resolvers::CreateLink < GraphQL::Function
  # arguments passed as 'args'
  argument :description, !types.String
  argument :url, !types.String

  # return type from the mutation
  type Types::LinkType

  # _obj is the parent object, which in this case is nil
  # args is the arguments passed
  # _ctx is the graphql context
  def call(_obj, args, _ctx)
    Link.create!(
      description: args[:description],
      url: args[:url]
    )
  end
end
