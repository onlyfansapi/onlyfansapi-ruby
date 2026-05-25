# frozen_string_literal: true

module Onlyfans
  module Models
    module Settings
      # @see Onlyfans::Resources::Settings::WelcomeMessage#update
      class WelcomeMessageUpdateParams < Onlyfans::Internal::Type::BaseModel
        extend Onlyfans::Internal::Type::RequestParameters::Converter
        include Onlyfans::Internal::Type::RequestParameters

        # @!attribute account
        #
        #   @return [String]
        required :account, String

        # @!attribute is_forward
        #
        #   @return [Boolean, nil]
        optional :is_forward, Onlyfans::Internal::Type::Boolean, api_name: :isForward

        # @!attribute locked_text
        #   Whether the text should be shown or hidden.
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
        #   **mediaFiles** is required.
        #
        #   @return [Integer, nil]
        optional :price, Integer

        # @!attribute rf_guest
        #   Array of OnlyFans Release Form Guest IDs to tag in your message.
        #
        #   @return [String, nil]
        optional :rf_guest, String, api_name: :rfGuest

        # @!attribute rf_partner
        #   Array of OnlyFans Release Form Partners IDs to tag in your message.
        #
        #   @return [String, nil]
        optional :rf_partner, String, api_name: :rfPartner

        # @!attribute rf_tag
        #   Array of OnlyFans Creator User IDs to tag in your message.
        #
        #   @return [String, nil]
        optional :rf_tag, String, api_name: :rfTag

        # @!attribute text
        #   The welcome message text content. Required unless a media file is present.
        #
        #   @return [String, nil]
        optional :text, String

        # @!method initialize(account:, is_forward: nil, locked_text: nil, media_files: nil, previews: nil, price: nil, rf_guest: nil, rf_partner: nil, rf_tag: nil, text: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Onlyfans::Models::Settings::WelcomeMessageUpdateParams} for more details.
        #
        #   @param account [String]
        #
        #   @param is_forward [Boolean]
        #
        #   @param locked_text [Boolean] Whether the text should be shown or hidden.
        #
        #   @param media_files [Array<Object>] Direct file uploads, OFAPI `ofapi_media_` IDs, or OF vault IDs. Will be hidden i
        #
        #   @param previews [Array<Object>] Direct file uploads, OFAPI `ofapi_media_` IDs, OF vault IDs, or integer indices
        #
        #   @param price [Integer] Price for paid content (0 or between 3-200). In case this is not zero,
        #   \*\*mediaFi
        #
        #   @param rf_guest [String] Array of OnlyFans Release Form Guest IDs to tag in your message.
        #
        #   @param rf_partner [String] Array of OnlyFans Release Form Partners IDs to tag in your message.
        #
        #   @param rf_tag [String] Array of OnlyFans Creator User IDs to tag in your message.
        #
        #   @param text [String] The welcome message text content. Required unless a media file is present.
        #
        #   @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
