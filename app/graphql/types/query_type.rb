# frozen_string_literal: true

module Types
  class QueryType < Types::BaseObject
    field :items, [Types::ItemType], null: false, description: "Return a list of items"
    field :artists, [Types::ArtistType], null:false, description: "Return a list of Artists"

    def items
      Item.all
    end

    def artists
      Artist.all
    end
    # If you're using Relay, you can include the following lines
    # field :node, field: GraphQL::Types::Relay::NodeField, null: false
    # field :nodes, field: GraphQL::Types::Relay::NodesField, null: false
  end
end
