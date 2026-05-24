# frozen_string_literal: true

module Onlyfansapi
  module Models
    module Chats
      # @see Onlyfansapi::Resources::Chats::Messages#retrieve
      class MessageRetrieveParams < Onlyfansapi::Internal::Type::BaseModel
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

        # @!attribute message_id
        #
        #   @return [String]
        required :message_id, String

        # @!method initialize(account:, chat_id:, message_id:, request_options: {})
        #   @param account [String]
        #   @param chat_id [String]
        #   @param message_id [String]
        #   @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
