# frozen_string_literal: true

module Onlyfansapi
  module Models
    module Chats
      # @see Onlyfansapi::Resources::Chats::Messages#send_
      class MessageSendParams < Onlyfansapi::Internal::Type::BaseModel
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

        # @!attribute text
        #   The message text content
        #
        #   @return [String]
        required :text, String

        # @!attribute locked_text
        #   Whether the text should be shown or hidden
        #
        #   @return [Boolean, nil]
        optional :locked_text, Onlyfansapi::Internal::Type::Boolean, api_name: :lockedText

        # @!attribute media_files
        #   Array of media file upload prefixed_ids, or OF media IDs (required if price is
        #   not 0). Will be hidden if `price` is provided.
        #
        #   @return [Array<String>, nil]
        optional :media_files, Onlyfansapi::Internal::Type::ArrayOf[String], api_name: :mediaFiles

        # @!attribute previews
        #   Array of media file upload prefixed_ids, or OF media IDs (required if price is
        #   not 0). Will be shown if `price` is provided. All `previews` values must also
        #   exist in the `mediaFiles` array.
        #
        #   @return [Array<String>, nil]
        optional :previews, Onlyfansapi::Internal::Type::ArrayOf[String]

        # @!attribute price
        #   Price for paid content (0 or between 3-200). In case this is not zero,
        #   **mediaFiles** is required
        #
        #   @return [Integer, nil]
        optional :price, Integer

        # @!method initialize(account:, chat_id:, text:, locked_text: nil, media_files: nil, previews: nil, price: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Onlyfansapi::Models::Chats::MessageSendParams} for more details.
        #
        #   @param account [String]
        #
        #   @param chat_id [String]
        #
        #   @param text [String] The message text content
        #
        #   @param locked_text [Boolean] Whether the text should be shown or hidden
        #
        #   @param media_files [Array<String>] Array of media file upload prefixed_ids, or OF media IDs (required if price is n
        #
        #   @param previews [Array<String>] Array of media file upload prefixed_ids, or OF media IDs (required if price is n
        #
        #   @param price [Integer] Price for paid content (0 or between 3-200). In case this is not zero,
        #   \*\*mediaFi
        #
        #   @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
