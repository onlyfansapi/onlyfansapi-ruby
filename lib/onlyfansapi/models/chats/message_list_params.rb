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

        # @!attribute filter
        #   Filter by certain messages. Currently, only pins are filterable.
        #
        #   @return [Symbol, Onlyfansapi::Models::Chats::MessageListParams::Filter, nil]
        optional :filter, enum: -> { Onlyfansapi::Chats::MessageListParams::Filter }

        # @!attribute first_id
        #   Use for pagination when `order=desc` (newest to oldest). Include this message ID
        #   as the first message in the results. Used to retrieve messages from e.g. the
        #   Search Chat Messages endpoint IDs.
        #
        #   @return [String, nil]
        optional :first_id, String, nil?: true

        # @!attribute last_id
        #   Use for pagination when `order=asc` (oldest to newest). Include this message ID
        #   as the first message in the results. WARNING! The response list of messages will
        #   also be inverted (oldest messages will be first, opposite to default where
        #   `order=desc`).
        #
        #   @return [String, nil]
        optional :last_id, String, nil?: true

        # @!attribute limit
        #   The number of messages to return (default = 10, max = 100)
        #
        #   @return [String, nil]
        optional :limit, String

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

        # @!method initialize(account:, chat_id:, filter: nil, first_id: nil, last_id: nil, limit: nil, order: nil, skip_users: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Onlyfansapi::Models::Chats::MessageListParams} for more details.
        #
        #   @param account [String]
        #
        #   @param chat_id [String]
        #
        #   @param filter [Symbol, Onlyfansapi::Models::Chats::MessageListParams::Filter] Filter by certain messages. Currently, only pins are filterable.
        #
        #   @param first_id [String, nil] Use for pagination when `order=desc` (newest to oldest). Include this message ID
        #
        #   @param last_id [String, nil] Use for pagination when `order=asc` (oldest to newest). Include this message ID
        #
        #   @param limit [String] The number of messages to return (default = 10, max = 100)
        #
        #   @param order [String] Sort order for messages (desc or asc)
        #
        #   @param skip_users [String] Whether to skip user details (all or none)
        #
        #   @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}]

        # Filter by certain messages. Currently, only pins are filterable.
        module Filter
          extend Onlyfansapi::Internal::Type::Enum

          PINNED = :pinned

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
