# frozen_string_literal: true

module Onlyfans
  module Models
    module Chats
      # @see Onlyfans::Resources::Chats::Messages#search
      class MessageSearchParams < Onlyfans::Internal::Type::BaseModel
        extend Onlyfans::Internal::Type::RequestParameters::Converter
        include Onlyfans::Internal::Type::RequestParameters

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
        #   @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
