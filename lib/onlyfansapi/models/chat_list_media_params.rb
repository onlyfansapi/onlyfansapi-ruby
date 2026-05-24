# frozen_string_literal: true

module Onlyfansapi
  module Models
    # @see Onlyfansapi::Resources::Chats#list_media
    class ChatListMediaParams < Onlyfansapi::Internal::Type::BaseModel
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

      # @!attribute limit
      #   Number of medias to return. Default = 20
      #
      #   @return [String, nil]
      optional :limit, String

      # @!attribute offset
      #   Number of medias to skip for pagination
      #
      #   @return [String, nil]
      optional :offset, String

      # @!attribute skip_users
      #   Whether to skip user details in response (all or none). Default = all
      #
      #   @return [String, nil]
      optional :skip_users, String

      # @!attribute type
      #   Filter by specific media types. Keep empty to return all.
      #
      #   @return [Symbol, Onlyfansapi::Models::ChatListMediaParams::Type, nil]
      optional :type, enum: -> { Onlyfansapi::ChatListMediaParams::Type }, nil?: true

      # @!method initialize(account:, chat_id:, limit: nil, offset: nil, skip_users: nil, type: nil, request_options: {})
      #   @param account [String]
      #
      #   @param chat_id [String]
      #
      #   @param limit [String] Number of medias to return. Default = 20
      #
      #   @param offset [String] Number of medias to skip for pagination
      #
      #   @param skip_users [String] Whether to skip user details in response (all or none). Default = all
      #
      #   @param type [Symbol, Onlyfansapi::Models::ChatListMediaParams::Type, nil] Filter by specific media types. Keep empty to return all.
      #
      #   @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}]

      # Filter by specific media types. Keep empty to return all.
      module Type
        extend Onlyfansapi::Internal::Type::Enum

        PHOTOS = :photos
        VIDEOS = :videos
        AUDIOS = :audios

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
