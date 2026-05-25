# frozen_string_literal: true

module Onlyfans
  module Models
    # @see Onlyfans::Resources::Chats#mark_as_unread
    class ChatMarkAsUnreadParams < Onlyfans::Internal::Type::BaseModel
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

      # @!method initialize(account:, chat_id:, request_options: {})
      #   @param account [String]
      #   @param chat_id [String]
      #   @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
