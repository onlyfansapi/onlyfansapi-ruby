# frozen_string_literal: true

module Onlyfans
  module Models
    # @see Onlyfans::Resources::MassMessaging#update
    class MassMessagingUpdateParams < Onlyfans::Internal::Type::BaseModel
      extend Onlyfans::Internal::Type::RequestParameters::Converter
      include Onlyfans::Internal::Type::RequestParameters

      # @!attribute account
      #
      #   @return [String]
      required :account, String

      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute text
      #   The message text content
      #
      #   @return [String]
      required :text, String

      # @!attribute giphy_id
      #   The ID of the Giphy GIF to attach to the message. Get IDs from the Giphy listing
      #   endpoints (`/giphy/trending`, `/giphy/search`).
      #
      #   @return [String, nil]
      optional :giphy_id, String, api_name: :giphyId

      # @!attribute locked_text
      #   Whether the text should be shown or hidden
      #
      #   @return [Boolean, nil]
      optional :locked_text, Onlyfans::Internal::Type::Boolean, api_name: :lockedText

      # @!attribute media_files
      #   Array of media file upload prefixed_ids, or OF media IDs (required if price is
      #   not 0). Will be hidden if `price` is provided.
      #
      #   @return [Array<String>, nil]
      optional :media_files, Onlyfans::Internal::Type::ArrayOf[String], api_name: :mediaFiles

      # @!attribute previews
      #   Array of media file upload prefixed_ids, or OF media IDs (required if price is
      #   not 0). Will be shown if `price` is provided. All `previews` values must also
      #   exist in the `mediaFiles` array.
      #
      #   @return [Array<String>, nil]
      optional :previews, Onlyfans::Internal::Type::ArrayOf[String]

      # @!attribute price
      #   Price for paid content (0 or between 3-200). In case this is not zero,
      #   **mediaFiles** is required
      #
      #   @return [Integer, nil]
      optional :price, Integer

      # @!attribute scheduled_date
      #   Schedule the chat message in the future (UTC timezone).
      #
      #   @return [String, nil]
      optional :scheduled_date, String, api_name: :scheduledDate

      # @!attribute user_ids
      #   Array of user IDs that the mass message will be sent to.
      #
      #   @return [Array<String>, nil]
      optional :user_ids, Onlyfans::Internal::Type::ArrayOf[String], api_name: :userIds

      # @!attribute user_lists
      #   Array of user list IDs that the mass message will be sent to.
      #
      #   @return [Array<String>, nil]
      optional :user_lists, Onlyfans::Internal::Type::ArrayOf[String], api_name: :userLists

      # @!method initialize(account:, id:, text:, giphy_id: nil, locked_text: nil, media_files: nil, previews: nil, price: nil, scheduled_date: nil, user_ids: nil, user_lists: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Onlyfans::Models::MassMessagingUpdateParams} for more details.
      #
      #   @param account [String]
      #
      #   @param id [String]
      #
      #   @param text [String] The message text content
      #
      #   @param giphy_id [String] The ID of the Giphy GIF to attach to the message. Get IDs from the Giphy listing
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
      #   @param scheduled_date [String] Schedule the chat message in the future (UTC timezone).
      #
      #   @param user_ids [Array<String>] Array of user IDs that the mass message will be sent to.
      #
      #   @param user_lists [Array<String>] Array of user list IDs that the mass message will be sent to.
      #
      #   @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
