# frozen_string_literal: true

module Onlyfansapi
  module Models
    module Chats
      # @see Onlyfansapi::Resources::Chats::Messages#search
      class MessageSearchParams < Onlyfansapi::Internal::Type::BaseModel
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

        # @!attribute query
        #   The query search in messages.
        #
        #   @return [String]
        required :query, String

        # @!method initialize(account:, chat_id:, query:, request_options: {})
        #   @param account [String]
        #
        #   @param chat_id [String]
        #
        #   @param query [String] The query search in messages.
        #
        #   @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
