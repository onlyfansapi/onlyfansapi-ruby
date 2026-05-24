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

      # @!attribute limit
      #   Number of chats to return (10, 20, or 30)
      #
      #   @return [String, nil]
      optional :limit, String

      # @!attribute offset
      #   Number of chats to skip for pagination
      #
      #   @return [String, nil]
      optional :offset, String

      # @!attribute order
      #   Sort order for chats (recent or old)
      #
      #   @return [String, nil]
      optional :order, String

      # @!attribute query
      #   Search query to filter chats
      #
      #   @return [String, nil]
      optional :query, String

      # @!attribute skip_users
      #   Whether to skip user details in response (all or none)
      #
      #   @return [String, nil]
      optional :skip_users, String

      # @!method initialize(account:, limit: nil, offset: nil, order: nil, query: nil, skip_users: nil, request_options: {})
      #   @param account [String]
      #
      #   @param limit [String] Number of chats to return (10, 20, or 30)
      #
      #   @param offset [String] Number of chats to skip for pagination
      #
      #   @param order [String] Sort order for chats (recent or old)
      #
      #   @param query [String] Search query to filter chats
      #
      #   @param skip_users [String] Whether to skip user details in response (all or none)
      #
      #   @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
