# frozen_string_literal: true

module Onlyfansapi
  module Models
    module Chats
      # @see Onlyfansapi::Resources::Chats::Messages#list
      class MessageListParams < Onlyfansapi::Internal::Type::BaseModel
        extend Onlyfansapi::Internal::Type::RequestParameters::Converter
        include Onlyfansapi::Internal::Type::RequestParameters

        # @!attribute account
        #
        #   @return [String]
        required :account, String

        # @!attribute chat_id
        #
        #   @return [String]
        required :chat_id, String

        # @!attribute id
        #   ID of the last message from previous page. Used for pagination
        #
        #   @return [String, nil]
        optional :id, String

        # @!attribute order
        #   Sort order for messages (desc or asc)
        #
        #   @return [String, nil]
        optional :order, String

        # @!attribute skip_users
        #   Whether to skip user details (all or none)
        #
        #   @return [String, nil]
        optional :skip_users, String

        # @!method initialize(account:, chat_id:, id: nil, order: nil, skip_users: nil, request_options: {})
        #   @param account [String]
        #
        #   @param chat_id [String]
        #
        #   @param id [String] ID of the last message from previous page. Used for pagination
        #
        #   @param order [String] Sort order for messages (desc or asc)
        #
        #   @param skip_users [String] Whether to skip user details (all or none)
        #
        #   @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
