# frozen_string_literal: true

module Onlyfansapi
  module Models
    # @see Onlyfansapi::Resources::SmartLinkPostbacks#update
    class SmartLinkPostbackUpdateParams < Onlyfansapi::Internal::Type::BaseModel
      extend Onlyfansapi::Internal::Type::RequestParameters::Converter
      include Onlyfansapi::Internal::Type::RequestParameters

      # @!attribute postback_id
      #
      #   @return [Integer]
      required :postback_id, Integer

      # @!attribute conversion_types
      #   One or more Smart Link conversion types that should trigger this postback.
      #
      #   @return [Array<String>]
      required :conversion_types, Onlyfansapi::Internal::Type::ArrayOf[String]

      # @!attribute smart_link_scope
      #   `global` or `campaign_specific`.
      #
      #   @return [Symbol, Onlyfansapi::Models::SmartLinkPostbackUpdateParams::SmartLinkScope]
      required :smart_link_scope, enum: -> { Onlyfansapi::SmartLinkPostbackUpdateParams::SmartLinkScope }

      # @!attribute url
      #   The destination URL.
      #
      #   @return [String]
      required :url, String

      # @!attribute smart_link_ids
      #   Smart Link ULIDs. Required when `smart_link_scope` is `campaign_specific`.
      #
      #   @return [Array<String>, nil]
      optional :smart_link_ids, Onlyfansapi::Internal::Type::ArrayOf[String]

      # @!method initialize(postback_id:, conversion_types:, smart_link_scope:, url:, smart_link_ids: nil, request_options: {})
      #   @param postback_id [Integer]
      #
      #   @param conversion_types [Array<String>] One or more Smart Link conversion types that should trigger this postback.
      #
      #   @param smart_link_scope [Symbol, Onlyfansapi::Models::SmartLinkPostbackUpdateParams::SmartLinkScope] `global` or `campaign_specific`.
      #
      #   @param url [String] The destination URL.
      #
      #   @param smart_link_ids [Array<String>] Smart Link ULIDs. Required when `smart_link_scope` is `campaign_specific`.
      #
      #   @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}]

      # `global` or `campaign_specific`.
      module SmartLinkScope
        extend Onlyfansapi::Internal::Type::Enum

        GLOBAL = :global
        CAMPAIGN_SPECIFIC = :campaign_specific

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
