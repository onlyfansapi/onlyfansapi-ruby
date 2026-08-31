# typed: strong

module Onlyfans
  module Resources
    # APIs for managing Smart Link postback destinations
    class SmartLinkPostbacks
      # Create a postback that fires for selected Smart Link conversion types
      sig do
        params(
          conversion_types: T::Array[String],
          smart_link_scope:
            Onlyfans::SmartLinkPostbackCreateParams::SmartLinkScope::OrSymbol,
          url: String,
          body: String,
          headers:
            T::Array[Onlyfans::SmartLinkPostbackCreateParams::Header::OrHash],
          http_method:
            Onlyfans::SmartLinkPostbackCreateParams::HTTPMethod::OrSymbol,
          smart_link_ids: T::Array[String],
          request_options: Onlyfans::RequestOptions::OrHash
        ).returns(Onlyfans::Models::SmartLinkPostbackCreateResponse)
      end
      def create(
        # One or more Smart Link conversion types that should trigger this postback.
        conversion_types:,
        # `global` fires for all Smart Links. `campaign_specific` fires only for selected
        # Smart Links.
        smart_link_scope:,
        # The destination URL. Variables such as `{external_click_id}`, `{fbclid}`,
        # `{gclid}`, `{gbraid}`, `{wbraid}`, `{ttclid}`, and `{sccid}` are replaced when
        # the postback is dispatched.
        url:,
        # Optional request body template for POST postbacks. Variables are replaced when
        # the postback is dispatched.
        body: nil,
        # Optional request headers. Header values may include postback variables.
        headers: nil,
        # HTTP method used for the postback request. Defaults to `GET` when omitted.
        http_method: nil,
        # Smart Link ULIDs. Required when `smart_link_scope` is `campaign_specific`.
        smart_link_ids: nil,
        request_options: {}
      )
      end

      # Retrieve a Smart Link postback by ID
      sig do
        params(
          postback_id: Integer,
          request_options: Onlyfans::RequestOptions::OrHash
        ).returns(Onlyfans::Models::SmartLinkPostbackRetrieveResponse)
      end
      def retrieve(
        # The postback ID
        postback_id,
        request_options: {}
      )
      end

      # Update a Smart Link postback configuration
      sig do
        params(
          postback_id: Integer,
          conversion_types: T::Array[String],
          smart_link_scope:
            Onlyfans::SmartLinkPostbackUpdateParams::SmartLinkScope::OrSymbol,
          url: String,
          body: String,
          headers:
            T::Array[Onlyfans::SmartLinkPostbackUpdateParams::Header::OrHash],
          http_method:
            Onlyfans::SmartLinkPostbackUpdateParams::HTTPMethod::OrSymbol,
          smart_link_ids: T::Array[String],
          request_options: Onlyfans::RequestOptions::OrHash
        ).returns(Onlyfans::Models::SmartLinkPostbackUpdateResponse)
      end
      def update(
        # The postback ID
        postback_id,
        # One or more Smart Link conversion types that should trigger this postback.
        conversion_types:,
        # `global` or `campaign_specific`.
        smart_link_scope:,
        # The destination URL.
        url:,
        # Optional request body template for POST postbacks. Variables are replaced when
        # the postback is dispatched.
        body: nil,
        # Optional request headers. Header values may include postback variables.
        headers: nil,
        # HTTP method used for the postback request. Existing value is kept when omitted.
        http_method: nil,
        # Smart Link ULIDs. Required when `smart_link_scope` is `campaign_specific`.
        smart_link_ids: nil,
        request_options: {}
      )
      end

      # List all Smart Link postbacks configured for your Team
      sig do
        params(request_options: Onlyfans::RequestOptions::OrHash).returns(
          Onlyfans::Models::SmartLinkPostbackListResponse
        )
      end
      def list(request_options: {})
      end

      # Delete a Smart Link postback
      sig do
        params(
          postback_id: Integer,
          request_options: Onlyfans::RequestOptions::OrHash
        ).returns(T.nilable(T::Hash[Symbol, T.anything]))
      end
      def delete(
        # The postback ID
        postback_id,
        request_options: {}
      )
      end

      # @api private
      sig { params(client: Onlyfans::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
