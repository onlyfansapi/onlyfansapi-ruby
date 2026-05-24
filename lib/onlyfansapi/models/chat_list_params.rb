# frozen_string_literal: true

module Onlyfansapi
  module Models
    # @see Onlyfansapi::Resources::Chats#list
    class ChatListParams < Onlyfansapi::Internal::Type::BaseModel
      extend Onlyfansapi::Internal::Type::RequestParameters::Converter
      include Onlyfansapi::Internal::Type::RequestParameters

      # @!attribute account
      #
      #   @return [String]
      required :account, String

      # @!attribute filter
      #   Optionally, filter the chats by type.
      #
      #   @return [Symbol, Onlyfansapi::Models::ChatListParams::Filter, nil]
      optional :filter, enum: -> { Onlyfansapi::ChatListParams::Filter }

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
      #   @return [Symbol, Onlyfansapi::Models::ChatListParams::Order, nil]
      optional :order, enum: -> { Onlyfansapi::ChatListParams::Order }

      # @!attribute query
      #   Search query to filter chats
      #
      #   @return [String, nil]
      optional :query, String

      # @!attribute skip_users
      #   Whether to skip user details in response (all or none). Default = all
      #
      #   @return [Symbol, Onlyfansapi::Models::ChatListParams::SkipUsers, nil]
      optional :skip_users, enum: -> { Onlyfansapi::ChatListParams::SkipUsers }

      # @!method initialize(account:, filter: nil, limit: nil, offset: nil, order: nil, query: nil, skip_users: nil, request_options: {})
      #   @param account [String]
      #
      #   @param filter [Symbol, Onlyfansapi::Models::ChatListParams::Filter] Optionally, filter the chats by type.
      #
      #   @param limit [String] Number of chats to return (1 - 100). Default = 10
      #
      #   @param offset [String] Number of chats to skip for pagination
      #
      #   @param order [Symbol, Onlyfansapi::Models::ChatListParams::Order] Sort order for chats (recent or old). Default = recent
      #
      #   @param query [String] Search query to filter chats
      #
      #   @param skip_users [Symbol, Onlyfansapi::Models::ChatListParams::SkipUsers] Whether to skip user details in response (all or none). Default = all
      #
      #   @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}]

      # Optionally, filter the chats by type.
      module Filter
        extend Onlyfansapi::Internal::Type::Enum

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
        extend Onlyfansapi::Internal::Type::Enum

        RECENT = :recent
        OLD = :old

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Whether to skip user details in response (all or none). Default = all
      module SkipUsers
        extend Onlyfansapi::Internal::Type::Enum

        ALL = :all
        NONE = :none

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
