# frozen_string_literal: true

module Onlyfans
  module Resources
    class Webhooks
      # Some parameter documentations has been truncated, see
      # {Onlyfans::Models::WebhookCreateParams} for more details.
      #
      # Create a new webhook for your Team
      #
      # @overload create(account_scope:, endpoint_url:, events:, account_ids: nil, signing_secret: nil, request_options: {})
      #
      # @param account_scope [String] The account scope for the webhook (OnlyFans and Fansly webhooks alike). Use "glo
      #
      # @param endpoint_url [String] The URL of your webhook endpoint.
      #
      # @param events [Array<String>] An array of webhook events to subscribe to. For all options, refer to our
      # \*\*List
      #
      # @param account_ids [Array<String>] An array of account IDs to apply the scope to. Use OnlyFans account IDs
      # (`acct\_.
      #
      # @param signing_secret [String, nil] Optionally, add a signing secret to protect your webhook.
      #
      # @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Onlyfans::Models::WebhookCreateResponse]
      #
      # @see Onlyfans::Models::WebhookCreateParams
      def create(params)
        parsed, options = Onlyfans::WebhookCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "api/webhooks",
          body: parsed,
          model: Onlyfans::Models::WebhookCreateResponse,
          options: options
        )
      end

      # Retrieve details about a specific webhook
      #
      # @overload retrieve(webhook_id, request_options: {})
      #
      # @param webhook_id [String] The ID of the webhook
      #
      # @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Onlyfans::Models::WebhookRetrieveResponse]
      #
      # @see Onlyfans::Models::WebhookRetrieveParams
      def retrieve(webhook_id, params = {})
        @client.request(
          method: :get,
          path: ["api/webhooks/%1$s", webhook_id],
          model: Onlyfans::Models::WebhookRetrieveResponse,
          options: params[:request_options]
        )
      end

      # Some parameter documentations has been truncated, see
      # {Onlyfans::Models::WebhookUpdateParams} for more details.
      #
      # Update an existing webhook
      #
      # @overload update(webhook_id, account_scope:, endpoint_url:, events:, account_ids: nil, enabled: nil, request_options: {})
      #
      # @param webhook_id [String] The ID of the webhook
      #
      # @param account_scope [String] The account scope for the webhook (OnlyFans and Fansly webhooks alike). Use "glo
      #
      # @param endpoint_url [String] The URL of your webhook endpoint.
      #
      # @param events [Array<String>] An array of webhook events to subscribe to. For all options, refer to our
      # \*\*List
      #
      # @param account_ids [Array<String>] An array of account IDs to apply the scope to. Use OnlyFans account IDs
      # (`acct\_.
      #
      # @param enabled [Boolean, nil] Optionally, enabled/disable the webhook. This will stop/resume the sending of ev
      #
      # @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Onlyfans::Models::WebhookUpdateResponse]
      #
      # @see Onlyfans::Models::WebhookUpdateParams
      def update(webhook_id, params)
        parsed, options = Onlyfans::WebhookUpdateParams.dump_request(params)
        @client.request(
          method: :put,
          path: ["api/webhooks/%1$s", webhook_id],
          body: parsed,
          model: Onlyfans::Models::WebhookUpdateResponse,
          options: options
        )
      end

      # Retrieve a list of webhooks for your Team
      #
      # @overload list(request_options: {})
      #
      # @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Onlyfans::Models::WebhookListResponse]
      #
      # @see Onlyfans::Models::WebhookListParams
      def list(params = {})
        @client.request(
          method: :get,
          path: "api/webhooks",
          model: Onlyfans::Models::WebhookListResponse,
          options: params[:request_options]
        )
      end

      # Delete an existing webhook
      #
      # @overload delete(webhook_id, request_options: {})
      #
      # @param webhook_id [String] The ID of the webhook
      #
      # @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Hash{Symbol=>Object}, nil]
      #
      # @see Onlyfans::Models::WebhookDeleteParams
      def delete(webhook_id, params = {})
        @client.request(
          method: :delete,
          path: ["api/webhooks/%1$s", webhook_id],
          model: Onlyfans::Internal::Type::HashOf[Onlyfans::Internal::Type::Unknown],
          options: params[:request_options]
        )
      end

      # Retrieve a list of all available webhook event types
      #
      # @overload list_events(request_options: {})
      #
      # @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Onlyfans::Models::WebhookListEventsResponse]
      #
      # @see Onlyfans::Models::WebhookListEventsParams
      def list_events(params = {})
        @client.request(
          method: :get,
          path: "api/webhooks/events",
          model: Onlyfans::Models::WebhookListEventsResponse,
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
