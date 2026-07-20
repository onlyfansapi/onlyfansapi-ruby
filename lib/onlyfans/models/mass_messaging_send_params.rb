# frozen_string_literal: true

module Onlyfans
  module Models
    # @see Onlyfans::Resources::MassMessaging#send_
    class MassMessagingSendParams < Onlyfans::Internal::Type::BaseModel
      extend Onlyfans::Internal::Type::RequestParameters::Converter
      include Onlyfans::Internal::Type::RequestParameters

      # @!attribute account
      #
      #   @return [String]
      required :account, String

      # @!attribute text
      #   The message text content
      #
      #   @return [String]
      required :text, String

      # @!attribute block_banned_words
      #   Screen `text` for OnlyFans banned words and block the send if any are found
      #   (returns a 422 listing the offending words). `strict_ban` blocks all tiers,
      #   `risky` blocks Risky + Replace/soften, `replace_soften` blocks Replace/soften
      #   only. Omit to disable screening.
      #
      #   @return [Symbol, Onlyfans::Models::MassMessagingSendParams::BlockBannedWords, nil]
      optional :block_banned_words,
               enum: -> { Onlyfans::MassMessagingSendParams::BlockBannedWords },
               api_name: :blockBannedWords

      # @!attribute excluded_lists
      #   Array of user list IDs that the mass message will NOT be sent to.
      #
      #   @return [Array<String>, nil]
      optional :excluded_lists, Onlyfans::Internal::Type::ArrayOf[String], api_name: :excludedLists

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
      #   Direct file uploads, OFAPI `ofapi_media_` IDs, or OF vault IDs. Will be hidden
      #   if `price` is provided.
      #
      #   @return [Array<Object>, nil]
      optional :media_files,
               Onlyfans::Internal::Type::ArrayOf[Onlyfans::Internal::Type::Unknown],
               api_name: :mediaFiles

      # @!attribute previews
      #   Direct file uploads, OFAPI `ofapi_media_` IDs, OF vault IDs, or integer indices
      #   referencing uploaded files in `mediaFiles`. Will be shown if `price` is
      #   provided.
      #
      #   @return [Array<Object>, nil]
      optional :previews, Onlyfans::Internal::Type::ArrayOf[Onlyfans::Internal::Type::Unknown]

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
      optional :save_for_later, Onlyfans::Internal::Type::Boolean, api_name: :saveForLater

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

      # @!method initialize(account:, text:, block_banned_words: nil, excluded_lists: nil, giphy_id: nil, locked_text: nil, media_files: nil, previews: nil, price: nil, rf_guest: nil, rf_partner: nil, rf_tag: nil, save_for_later: nil, scheduled_date: nil, user_ids: nil, user_lists: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Onlyfans::Models::MassMessagingSendParams} for more details.
      #
      #   @param account [String]
      #
      #   @param text [String] The message text content
      #
      #   @param block_banned_words [Symbol, Onlyfans::Models::MassMessagingSendParams::BlockBannedWords] Screen `text` for OnlyFans banned words and block the send if any are found (ret
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
      #   @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}]

      # Screen `text` for OnlyFans banned words and block the send if any are found
      # (returns a 422 listing the offending words). `strict_ban` blocks all tiers,
      # `risky` blocks Risky + Replace/soften, `replace_soften` blocks Replace/soften
      # only. Omit to disable screening.
      module BlockBannedWords
        extend Onlyfans::Internal::Type::Enum

        STRICT_BAN = :strict_ban
        RISKY = :risky
        REPLACE_SOFTEN = :replace_soften

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
