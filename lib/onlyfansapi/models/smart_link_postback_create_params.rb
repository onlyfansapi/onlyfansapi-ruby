# frozen_string_literal: true

module Onlyfansapi
  module Models
    # @see Onlyfansapi::Resources::SmartLinkPostbacks#create
    class SmartLinkPostbackCreateParams < Onlyfansapi::Internal::Type::BaseModel
      extend Onlyfansapi::Internal::Type::RequestParameters::Converter
      include Onlyfansapi::Internal::Type::RequestParameters

      # @!attribute conversion_types
      #   One or more Smart Link conversion types that should trigger this postback.
      #
      #   @return [Array<String>]
      required :conversion_types, Onlyfansapi::Internal::Type::ArrayOf[String]

      # @!attribute smart_link_scope
      #   `global` fires for all Smart Links. `campaign_specific` fires only for selected
      #   Smart Links.
      #
      #   @return [Symbol, Onlyfansapi::Models::SmartLinkPostbackCreateParams::SmartLinkScope]
      required :smart_link_scope, enum: -> { Onlyfansapi::SmartLinkPostbackCreateParams::SmartLinkScope }

      # @!attribute url
      #   The destination URL. Variables such as `{click_id}`, `{fbclid}`, `{gclid}`, and
      #   `{ttclid}` are replaced when the postback is dispatched.
      #
      #   @return [String]
      required :url, String

      # @!attribute smart_link_ids
      #   Smart Link ULIDs. Required when `smart_link_scope` is `campaign_specific`.
      #
      #   @return [Array<String>, nil]
      optional :smart_link_ids, Onlyfansapi::Internal::Type::ArrayOf[String]

      # @!method initialize(conversion_types:, smart_link_scope:, url:, smart_link_ids: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Onlyfansapi::Models::SmartLinkPostbackCreateParams} for more details.
      #
      #   @param conversion_types [Array<String>] One or more Smart Link conversion types that should trigger this postback.
      #
      #   @param smart_link_scope [Symbol, Onlyfansapi::Models::SmartLinkPostbackCreateParams::SmartLinkScope] `global` fires for all Smart Links. `campaign_specific` fires only for selected
      #
      #   @param url [String] The destination URL. Variables such as `{click_id}`, `{fbclid}`, `{gclid}`, and
      #
      #   @param smart_link_ids [Array<String>] Smart Link ULIDs. Required when `smart_link_scope` is `campaign_specific`.
      #
      #   @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}]

      # `global` fires for all Smart Links. `campaign_specific` fires only for selected
      # Smart Links.
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
