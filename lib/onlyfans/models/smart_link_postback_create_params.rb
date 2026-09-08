# frozen_string_literal: true

module Onlyfans
  module Models
    # @see Onlyfans::Resources::SmartLinkPostbacks#create
    class SmartLinkPostbackCreateParams < Onlyfans::Internal::Type::BaseModel
      extend Onlyfans::Internal::Type::RequestParameters::Converter
      include Onlyfans::Internal::Type::RequestParameters

      # @!attribute conversion_types
      #   One or more Smart Link conversion types that should trigger this postback.
      #
      #   @return [Array<String>]
      required :conversion_types, Onlyfans::Internal::Type::ArrayOf[String]

      # @!attribute smart_link_scope
      #   `global` fires for all Smart Links. `campaign_specific` fires only for selected
      #   Smart Links.
      #
      #   @return [Symbol, Onlyfans::Models::SmartLinkPostbackCreateParams::SmartLinkScope]
      required :smart_link_scope, enum: -> { Onlyfans::SmartLinkPostbackCreateParams::SmartLinkScope }

      # @!attribute url
      #   The destination URL. Variables such as `{external_click_id}`, `{fbclid}`,
      #   `{gclid}`, `{gbraid}`, `{wbraid}`, `{ttclid}`, and `{sccid}` are replaced when
      #   the postback is dispatched.
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
      #   @return [Array<Onlyfans::Models::SmartLinkPostbackCreateParams::Header>, nil]
      optional :headers,
               -> { Onlyfans::Internal::Type::ArrayOf[Onlyfans::SmartLinkPostbackCreateParams::Header] }

      # @!attribute http_method
      #   HTTP method used for the postback request. Defaults to `GET` when omitted.
      #
      #   @return [Symbol, Onlyfans::Models::SmartLinkPostbackCreateParams::HTTPMethod, nil]
      optional :http_method, enum: -> { Onlyfans::SmartLinkPostbackCreateParams::HTTPMethod }

      # @!attribute smart_link_ids
      #   Smart Link ULIDs. Required when `smart_link_scope` is `campaign_specific`.
      #
      #   @return [Array<String>, nil]
      optional :smart_link_ids, Onlyfans::Internal::Type::ArrayOf[String]

      # @!method initialize(conversion_types:, smart_link_scope:, url:, body: nil, headers: nil, http_method: nil, smart_link_ids: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Onlyfans::Models::SmartLinkPostbackCreateParams} for more details.
      #
      #   @param conversion_types [Array<String>] One or more Smart Link conversion types that should trigger this postback.
      #
      #   @param smart_link_scope [Symbol, Onlyfans::Models::SmartLinkPostbackCreateParams::SmartLinkScope] `global` fires for all Smart Links. `campaign_specific` fires only for selected
      #
      #   @param url [String] The destination URL. Variables such as `{external_click_id}`, `{fbclid}`, `{gcli
      #
      #   @param body [String] Optional request body template for POST postbacks. Variables are replaced when t
      #
      #   @param headers [Array<Onlyfans::Models::SmartLinkPostbackCreateParams::Header>] Optional request headers. Header values may include postback variables.
      #
      #   @param http_method [Symbol, Onlyfans::Models::SmartLinkPostbackCreateParams::HTTPMethod] HTTP method used for the postback request. Defaults to `GET` when omitted.
      #
      #   @param smart_link_ids [Array<String>] Smart Link ULIDs. Required when `smart_link_scope` is `campaign_specific`.
      #
      #   @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}]

      # `global` fires for all Smart Links. `campaign_specific` fires only for selected
      # Smart Links.
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
        #   {Onlyfans::Models::SmartLinkPostbackCreateParams::Header} for more details.
        #
        #   @param name [String, nil] This field is required when <code>headers.\*.value</code> is present. Must match
        #
        #   @param value [String, nil] Must not be greater than 2000 characters.
      end

      # HTTP method used for the postback request. Defaults to `GET` when omitted.
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
