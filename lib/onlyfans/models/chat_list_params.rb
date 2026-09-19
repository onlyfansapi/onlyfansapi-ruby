# frozen_string_literal: true

module Onlyfans
  module Models
    # @see Onlyfans::Resources::Chats#list
    class ChatListParams < Onlyfans::Internal::Type::BaseModel
      extend Onlyfans::Internal::Type::RequestParameters::Converter
      include Onlyfans::Internal::Type::RequestParameters

      # @!attribute account
      #
      #   @return [String]
      required :account, String

      # @!attribute filter
      #   Optionally, filter the chats by type.
      #
      #   @return [Symbol, Onlyfans::Models::ChatListParams::Filter, nil]
      optional :filter, enum: -> { Onlyfans::ChatListParams::Filter }

      # @!attribute limit
      #   Number of chats to return (1 - 100). Default = 10
      #
      #   @return [String, nil]
      optional :limit, String

      # @!attribute offset
      #   Number of chats to skip for pagination
      #
      #   @return [String, nil]
      optional :offset, String

      # @!attribute order
      #   Sort order for chats (recent or old). Default = recent
      #
      #   @return [Symbol, Onlyfans::Models::ChatListParams::Order, nil]
      optional :order, enum: -> { Onlyfans::ChatListParams::Order }

      # @!attribute query
      #   Search query to filter chats
      #
      #   @return [String, nil]
      optional :query, String

      # @!attribute skip_users
      #   Whether to skip user details in the response (`all` or `none`). Defaults to
      #   `all`.
      #
      #   @return [Symbol, Onlyfans::Models::ChatListParams::SkipUsers, nil]
      optional :skip_users, enum: -> { Onlyfans::ChatListParams::SkipUsers }

      # @!method initialize(account:, filter: nil, limit: nil, offset: nil, order: nil, query: nil, skip_users: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Onlyfans::Models::ChatListParams} for more details.
      #
      #   @param account [String]
      #
      #   @param filter [Symbol, Onlyfans::Models::ChatListParams::Filter] Optionally, filter the chats by type.
      #
      #   @param limit [String] Number of chats to return (1 - 100). Default = 10
      #
      #   @param offset [String] Number of chats to skip for pagination
      #
      #   @param order [Symbol, Onlyfans::Models::ChatListParams::Order] Sort order for chats (recent or old). Default = recent
      #
      #   @param query [String] Search query to filter chats
      #
      #   @param skip_users [Symbol, Onlyfans::Models::ChatListParams::SkipUsers] Whether to skip user details in the response (`all` or `none`). Defaults to `all
      #
      #   @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}]

      # Optionally, filter the chats by type.
      module Filter
        extend Onlyfans::Internal::Type::Enum

        PINNED = :pinned
        PRIORITY = :priority
        UNREAD = :unread
        WITH_TIPS = :with_tips
        UNREAD_WITH_TIPS = :unread_with_tips

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Sort order for chats (recent or old). Default = recent
      module Order
        extend Onlyfans::Internal::Type::Enum

        RECENT = :recent
        OLD = :old

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Whether to skip user details in the response (`all` or `none`). Defaults to
      # `all`.
      module SkipUsers
        extend Onlyfans::Internal::Type::Enum

        ALL = :all
        NONE = :none

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
