# frozen_string_literal: true

module Onlyfans
  module Models
    # @see Onlyfans::Resources::Chats#list_media
    class ChatListMediaParams < Onlyfans::Internal::Type::BaseModel
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
      #   Whether to skip user details in the response (`all` or `none`). Defaults to
      #   `all`.
      #
      #   @return [String, nil]
      optional :skip_users, String

      # @!attribute type
      #   Filter by specific media types. Keep empty to return all.
      #
      #   @return [Symbol, Onlyfans::Models::ChatListMediaParams::Type, nil]
      optional :type, enum: -> { Onlyfans::ChatListMediaParams::Type }, nil?: true

      # @!method initialize(account:, chat_id:, limit: nil, offset: nil, skip_users: nil, type: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Onlyfans::Models::ChatListMediaParams} for more details.
      #
      #   @param account [String]
      #
      #   @param chat_id [String]
      #
      #   @param limit [String] Number of medias to return. Default = 20
      #
      #   @param offset [String] Number of medias to skip for pagination
      #
      #   @param skip_users [String] Whether to skip user details in the response (`all` or `none`). Defaults to `all
      #
      #   @param type [Symbol, Onlyfans::Models::ChatListMediaParams::Type, nil] Filter by specific media types. Keep empty to return all.
      #
      #   @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}]

      # Filter by specific media types. Keep empty to return all.
      module Type
        extend Onlyfans::Internal::Type::Enum

        PHOTOS = :photos
        VIDEOS = :videos
        AUDIOS = :audios

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
