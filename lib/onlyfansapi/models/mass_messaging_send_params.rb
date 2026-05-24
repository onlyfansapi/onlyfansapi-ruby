# frozen_string_literal: true

module Onlyfansapi
  module Models
    # @see Onlyfansapi::Resources::MassMessaging#send_
    class MassMessagingSendParams < Onlyfansapi::Internal::Type::BaseModel
      extend Onlyfansapi::Internal::Type::RequestParameters::Converter
      include Onlyfansapi::Internal::Type::RequestParameters

      # @!attribute account
      #
      #   @return [String]
      required :account, String

      # @!attribute text
      #   The message text content
      #
      #   @return [String]
      required :text, String

      # @!attribute excluded_lists
      #   Array of user list IDs that the mass message will NOT be sent to.
      #
      #   @return [Array<String>, nil]
      optional :excluded_lists, Onlyfansapi::Internal::Type::ArrayOf[String], api_name: :excludedLists

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
      optional :locked_text, Onlyfansapi::Internal::Type::Boolean, api_name: :lockedText

      # @!attribute media_files
      #   Direct file uploads, OFAPI `ofapi_media_` IDs, or OF vault IDs. Will be hidden
      #   if `price` is provided.
      #
      #   @return [Array<Object>, nil]
      optional :media_files,
               Onlyfansapi::Internal::Type::ArrayOf[Onlyfansapi::Internal::Type::Unknown],
               api_name: :mediaFiles

      # @!attribute previews
      #   Direct file uploads, OFAPI `ofapi_media_` IDs, OF vault IDs, or integer indices
      #   referencing uploaded files in `mediaFiles`. Will be shown if `price` is
      #   provided.
      #
      #   @return [Array<Object>, nil]
      optional :previews, Onlyfansapi::Internal::Type::ArrayOf[Onlyfansapi::Internal::Type::Unknown]

      # @!attribute price
      #   Price for paid content (0 or between 3-200). In case this is not zero,
      #   **mediaFiles** is required
      #
      #   @return [Integer, nil]
      optional :price, Integer

      # @!attribute rf_guest
      #   Array of OnlyFans Release Form Guest IDs to tag in your mass message
      #
      #   @return [String, nil]
      optional :rf_guest, String, api_name: :rfGuest

      # @!attribute rf_partner
      #   Array of OnlyFans Release Form Partners IDs to tag in your mass message
      #
      #   @return [String, nil]
      optional :rf_partner, String, api_name: :rfPartner

      # @!attribute rf_tag
      #   Array of OnlyFans Creator User IDs to tag in your mass message
      #
      #   @return [String, nil]
      optional :rf_tag, String, api_name: :rfTag

      # @!attribute save_for_later
      #   Add your message to the "Saved for later" queue.
      #
      #   @return [Boolean, nil]
      optional :save_for_later, Onlyfansapi::Internal::Type::Boolean, api_name: :saveForLater

      # @!attribute scheduled_date
      #   Schedule the chat message in the future (UTC timezone).
      #
      #   @return [String, nil]
      optional :scheduled_date, String, api_name: :scheduledDate

      # @!attribute user_ids
      #   Array of user IDs that the mass message will be sent to.
      #
      #   @return [Array<String>, nil]
      optional :user_ids, Onlyfansapi::Internal::Type::ArrayOf[String], api_name: :userIds

      # @!attribute user_lists
      #   Array of user list IDs that the mass message will be sent to.
      #
      #   @return [Array<String>, nil]
      optional :user_lists, Onlyfansapi::Internal::Type::ArrayOf[String], api_name: :userLists

      # @!method initialize(account:, text:, excluded_lists: nil, giphy_id: nil, locked_text: nil, media_files: nil, previews: nil, price: nil, rf_guest: nil, rf_partner: nil, rf_tag: nil, save_for_later: nil, scheduled_date: nil, user_ids: nil, user_lists: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Onlyfansapi::Models::MassMessagingSendParams} for more details.
      #
      #   @param account [String]
      #
      #   @param text [String] The message text content
      #
      #   @param excluded_lists [Array<String>] Array of user list IDs that the mass message will NOT be sent to.
      #
      #   @param giphy_id [String] The ID of the Giphy GIF to attach to the message. Get IDs from the Giphy listing
      #
      #   @param locked_text [Boolean] Whether the text should be shown or hidden
      #
      #   @param media_files [Array<Object>] Direct file uploads, OFAPI `ofapi_media_` IDs, or OF vault IDs. Will be hidden i
      #
      #   @param previews [Array<Object>] Direct file uploads, OFAPI `ofapi_media_` IDs, OF vault IDs, or integer indices
      #
      #   @param price [Integer] Price for paid content (0 or between 3-200). In case this is not zero,
      #   \*\*mediaFi
      #
      #   @param rf_guest [String] Array of OnlyFans Release Form Guest IDs to tag in your mass message
      #
      #   @param rf_partner [String] Array of OnlyFans Release Form Partners IDs to tag in your mass message
      #
      #   @param rf_tag [String] Array of OnlyFans Creator User IDs to tag in your mass message
      #
      #   @param save_for_later [Boolean] Add your message to the "Saved for later" queue.
      #
      #   @param scheduled_date [String] Schedule the chat message in the future (UTC timezone).
      #
      #   @param user_ids [Array<String>] Array of user IDs that the mass message will be sent to.
      #
      #   @param user_lists [Array<String>] Array of user list IDs that the mass message will be sent to.
      #
      #   @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
