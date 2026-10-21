# frozen_string_literal: true

module Onlyfans
  module Models
    # @see Onlyfans::Resources::SmartLinkPostbacks#update
    class SmartLinkPostbackUpdateParams < Onlyfans::Internal::Type::BaseModel
      extend Onlyfans::Internal::Type::RequestParameters::Converter
      include Onlyfans::Internal::Type::RequestParameters

      # @!attribute postback_id
      #
      #   @return [Integer]
      required :postback_id, Integer

      # @!attribute conversion_types
      #   One or more Smart Link conversion types that should trigger this postback.
      #
      #   @return [Array<String>]
      required :conversion_types, Onlyfans::Internal::Type::ArrayOf[String]

      # @!attribute smart_link_scope
      #   `global` or `campaign_specific`.
      #
      #   @return [Symbol, Onlyfans::Models::SmartLinkPostbackUpdateParams::SmartLinkScope]
      required :smart_link_scope, enum: -> { Onlyfans::SmartLinkPostbackUpdateParams::SmartLinkScope }

      # @!attribute url
      #   The destination URL.
      #
      #   @return [String]
      required :url, String

      # @!attribute body
      #   Optional request body template for POST postbacks. Variables are replaced when
      #   the postback is dispatched.
      #
      #   @return [String, nil]
      optional :body, String

      # @!attribute headers
      #   Optional request headers. Header values may include postback variables.
      #
      #   @return [Array<Onlyfans::Models::SmartLinkPostbackUpdateParams::Header>, nil]
      optional :headers,
               -> { Onlyfans::Internal::Type::ArrayOf[Onlyfans::SmartLinkPostbackUpdateParams::Header] }

      # @!attribute http_method
      #   HTTP method used for the postback request. Existing value is kept when omitted.
      #
      #   @return [Symbol, Onlyfans::Models::SmartLinkPostbackUpdateParams::HTTPMethod, nil]
      optional :http_method, enum: -> { Onlyfans::SmartLinkPostbackUpdateParams::HTTPMethod }

      # @!attribute smart_link_ids
      #   Smart Link ULIDs. Required when `smart_link_scope` is `campaign_specific`.
      #
      #   @return [Array<String>, nil]
      optional :smart_link_ids, Onlyfans::Internal::Type::ArrayOf[String]

      # @!method initialize(postback_id:, conversion_types:, smart_link_scope:, url:, body: nil, headers: nil, http_method: nil, smart_link_ids: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Onlyfans::Models::SmartLinkPostbackUpdateParams} for more details.
      #
      #   @param postback_id [Integer]
      #
      #   @param conversion_types [Array<String>] One or more Smart Link conversion types that should trigger this postback.
      #
      #   @param smart_link_scope [Symbol, Onlyfans::Models::SmartLinkPostbackUpdateParams::SmartLinkScope] `global` or `campaign_specific`.
      #
      #   @param url [String] The destination URL.
      #
      #   @param body [String] Optional request body template for POST postbacks. Variables are replaced when t
      #
      #   @param headers [Array<Onlyfans::Models::SmartLinkPostbackUpdateParams::Header>] Optional request headers. Header values may include postback variables.
      #
      #   @param http_method [Symbol, Onlyfans::Models::SmartLinkPostbackUpdateParams::HTTPMethod] HTTP method used for the postback request. Existing value is kept when omitted.
      #
      #   @param smart_link_ids [Array<String>] Smart Link ULIDs. Required when `smart_link_scope` is `campaign_specific`.
      #
      #   @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}]

      # `global` or `campaign_specific`.
      module SmartLinkScope
        extend Onlyfans::Internal::Type::Enum

        GLOBAL = :global
        CAMPAIGN_SPECIFIC = :campaign_specific

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      class Header < Onlyfans::Internal::Type::BaseModel
        # @!attribute name
        #   This field is required when <code>headers._.value</code> is present. Must match
        #   the regex /\A[A-Za-z0-9!#$%&'_+.^\_`|~-]+\z/. Must not be greater than 100
        #   characters.
        #
        #   @return [String, nil]
        optional :name, String, nil?: true

        # @!attribute value
        #   Must not be greater than 2000 characters.
        #
        #   @return [String, nil]
        optional :value, String, nil?: true

        # @!method initialize(name: nil, value: nil)
        #   Some parameter documentations has been truncated, see
        #   {Onlyfans::Models::SmartLinkPostbackUpdateParams::Header} for more details.
        #
        #   @param name [String, nil] This field is required when <code>headers.\*.value</code> is present. Must match
        #
        #   @param value [String, nil] Must not be greater than 2000 characters.
      end

      # HTTP method used for the postback request. Existing value is kept when omitted.
      module HTTPMethod
        extend Onlyfans::Internal::Type::Enum

        GET = :GET
        POST = :POST

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
