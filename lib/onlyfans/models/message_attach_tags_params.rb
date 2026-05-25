# frozen_string_literal: true

module Onlyfans
  module Models
    # @see Onlyfans::Resources::Messages#attach_tags
    class MessageAttachTagsParams < Onlyfans::Internal::Type::BaseModel
      extend Onlyfans::Internal::Type::RequestParameters::Converter
      include Onlyfans::Internal::Type::RequestParameters

      # @!attribute account
      #
      #   @return [String]
      required :account, String

      # @!attribute message_id
      #
      #   @return [String]
      required :message_id, String

      # @!attribute rf_guest
      #   Array of OnlyFans Release Form Guest IDs to tag in your message
      #
      #   @return [String, nil]
      optional :rf_guest, String, api_name: :rfGuest

      # @!attribute rf_partner
      #   Array of OnlyFans Release Form Partners IDs to tag in your message
      #
      #   @return [String, nil]
      optional :rf_partner, String, api_name: :rfPartner

      # @!attribute rf_tag
      #   Array of OnlyFans Creator User IDs to tag in your message
      #
      #   @return [String, nil]
      optional :rf_tag, String, api_name: :rfTag

      # @!method initialize(account:, message_id:, rf_guest: nil, rf_partner: nil, rf_tag: nil, request_options: {})
      #   @param account [String]
      #
      #   @param message_id [String]
      #
      #   @param rf_guest [String] Array of OnlyFans Release Form Guest IDs to tag in your message
      #
      #   @param rf_partner [String] Array of OnlyFans Release Form Partners IDs to tag in your message
      #
      #   @param rf_tag [String] Array of OnlyFans Creator User IDs to tag in your message
      #
      #   @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
