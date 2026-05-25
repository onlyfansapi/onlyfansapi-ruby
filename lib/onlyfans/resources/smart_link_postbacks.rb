# frozen_string_literal: true

module Onlyfans
  module Resources
    # APIs for managing Smart Link postback destinations
    class SmartLinkPostbacks
      # Some parameter documentations has been truncated, see
      # {Onlyfans::Models::SmartLinkPostbackCreateParams} for more details.
      #
      # Create a postback that fires for selected Smart Link conversion types
      #
      # @overload create(conversion_types:, smart_link_scope:, url:, smart_link_ids: nil, request_options: {})
      #
      # @param conversion_types [Array<String>] One or more Smart Link conversion types that should trigger this postback.
      #
      # @param smart_link_scope [Symbol, Onlyfans::Models::SmartLinkPostbackCreateParams::SmartLinkScope] `global` fires for all Smart Links. `campaign_specific` fires only for selected
      #
      # @param url [String] The destination URL. Variables such as `{click_id}`, `{fbclid}`, `{gclid}`, and
      #
      # @param smart_link_ids [Array<String>] Smart Link ULIDs. Required when `smart_link_scope` is `campaign_specific`.
      #
      # @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Onlyfans::Models::SmartLinkPostbackCreateResponse]
      #
      # @see Onlyfans::Models::SmartLinkPostbackCreateParams
      def create(params)
        parsed, options = Onlyfans::SmartLinkPostbackCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "api/smart-link-postbacks",
          body: parsed,
          model: Onlyfans::Models::SmartLinkPostbackCreateResponse,
          options: options
        )
      end

      # Retrieve a Smart Link postback by ID
      #
      # @overload retrieve(postback_id, request_options: {})
      #
      # @param postback_id [Integer] The postback ID
      #
      # @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Onlyfans::Models::SmartLinkPostbackRetrieveResponse]
      #
      # @see Onlyfans::Models::SmartLinkPostbackRetrieveParams
      def retrieve(postback_id, params = {})
        @client.request(
          method: :get,
          path: ["api/smart-link-postbacks/%1$s", postback_id],
          model: Onlyfans::Models::SmartLinkPostbackRetrieveResponse,
          options: params[:request_options]
        )
      end

      # Update a Smart Link postback configuration
      #
      # @overload update(postback_id, conversion_types:, smart_link_scope:, url:, smart_link_ids: nil, request_options: {})
      #
      # @param postback_id [Integer] The postback ID
      #
      # @param conversion_types [Array<String>] One or more Smart Link conversion types that should trigger this postback.
      #
      # @param smart_link_scope [Symbol, Onlyfans::Models::SmartLinkPostbackUpdateParams::SmartLinkScope] `global` or `campaign_specific`.
      #
      # @param url [String] The destination URL.
      #
      # @param smart_link_ids [Array<String>] Smart Link ULIDs. Required when `smart_link_scope` is `campaign_specific`.
      #
      # @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Onlyfans::Models::SmartLinkPostbackUpdateResponse]
      #
      # @see Onlyfans::Models::SmartLinkPostbackUpdateParams
      def update(postback_id, params)
        parsed, options = Onlyfans::SmartLinkPostbackUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["api/smart-link-postbacks/%1$s", postback_id],
          body: parsed,
          model: Onlyfans::Models::SmartLinkPostbackUpdateResponse,
          options: options
        )
      end

      # List all Smart Link postbacks configured for your Team
      #
      # @overload list(request_options: {})
      #
      # @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Onlyfans::Models::SmartLinkPostbackListResponse]
      #
      # @see Onlyfans::Models::SmartLinkPostbackListParams
      def list(params = {})
        @client.request(
          method: :get,
          path: "api/smart-link-postbacks",
          model: Onlyfans::Models::SmartLinkPostbackListResponse,
          options: params[:request_options]
        )
      end

      # Delete a Smart Link postback
      #
      # @overload delete(postback_id, request_options: {})
      #
      # @param postback_id [Integer] The postback ID
      #
      # @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Hash{Symbol=>Object}, nil]
      #
      # @see Onlyfans::Models::SmartLinkPostbackDeleteParams
      def delete(postback_id, params = {})
        @client.request(
          method: :delete,
          path: ["api/smart-link-postbacks/%1$s", postback_id],
          model: Onlyfans::Internal::Type::HashOf[Onlyfans::Internal::Type::Unknown],
          options: params[:request_options]
        )
      end

      # @api private
      #
      # @param client [Onlyfans::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
