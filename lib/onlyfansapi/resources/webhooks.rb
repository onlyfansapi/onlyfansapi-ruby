# frozen_string_literal: true

module Onlyfansapi
  module Resources
    class Webhooks
      # Some parameter documentations has been truncated, see
      # {Onlyfansapi::Models::WebhookCreateParams} for more details.
      #
      # Create a new webhook for your Team
      #
      # @overload create(account_scope:, endpoint_url:, events:, account_ids: nil, signing_secret: nil, request_options: {})
      #
      # @param account_scope [String] The account scope for the webhook. Use "global" for all accounts, "inclusive" fo
      #
      # @param endpoint_url [String] The URL of your webhook endpoint.
      #
      # @param events [Array<String>] An array of webhook events to subscribe to. For all options, refer to our
      # \*\*List
      #
      # @param account_ids [Array<String>] An array of account IDs to apply the scope to. Required unless account_scope is
      #
      # @param signing_secret [String, nil] Optionally, add a signing secret to protect your webhook.
      #
      # @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Onlyfansapi::Models::WebhookCreateResponse]
      #
      # @see Onlyfansapi::Models::WebhookCreateParams
      def create(params)
        parsed, options = Onlyfansapi::WebhookCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "api/webhooks",
          body: parsed,
          model: Onlyfansapi::Models::WebhookCreateResponse,
          options: options
        )
      end

      # Retrieve details about a specific webhook
      #
      # @overload retrieve(webhook_id, request_options: {})
      #
      # @param webhook_id [String] The ID of the webhook
      #
      # @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Onlyfansapi::Models::WebhookRetrieveResponse]
      #
      # @see Onlyfansapi::Models::WebhookRetrieveParams
      def retrieve(webhook_id, params = {})
        @client.request(
          method: :get,
          path: ["api/webhooks/%1$s", webhook_id],
          model: Onlyfansapi::Models::WebhookRetrieveResponse,
          options: params[:request_options]
        )
      end

      # Some parameter documentations has been truncated, see
      # {Onlyfansapi::Models::WebhookUpdateParams} for more details.
      #
      # Update an existing webhook
      #
      # @overload update(webhook_id, account_scope:, endpoint_url:, events:, account_ids: nil, enabled: nil, request_options: {})
      #
      # @param webhook_id [String] The ID of the webhook
      #
      # @param account_scope [String] The account scope for the webhook. Use "global" for all accounts, "inclusive" fo
      #
      # @param endpoint_url [String] The URL of your webhook endpoint.
      #
      # @param events [Array<String>] An array of webhook events to subscribe to. For all options, refer to our
      # \*\*List
      #
      # @param account_ids [Array<String>] An array of account IDs to apply the scope to. Required unless account_scope is
      #
      # @param enabled [Boolean, nil] Optionally, enabled/disable the webhook. This will stop/resume the sending of ev
      #
      # @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Onlyfansapi::Models::WebhookUpdateResponse]
      #
      # @see Onlyfansapi::Models::WebhookUpdateParams
      def update(webhook_id, params)
        parsed, options = Onlyfansapi::WebhookUpdateParams.dump_request(params)
        @client.request(
          method: :put,
          path: ["api/webhooks/%1$s", webhook_id],
          body: parsed,
          model: Onlyfansapi::Models::WebhookUpdateResponse,
          options: options
        )
      end

      # Retrieve a list of webhooks for your Team
      #
      # @overload list(request_options: {})
      #
      # @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Onlyfansapi::Models::WebhookListResponse]
      #
      # @see Onlyfansapi::Models::WebhookListParams
      def list(params = {})
        @client.request(
          method: :get,
          path: "api/webhooks",
          model: Onlyfansapi::Models::WebhookListResponse,
          options: params[:request_options]
        )
      end

      # Delete an existing webhook
      #
      # @overload delete(webhook_id, request_options: {})
      #
      # @param webhook_id [String] The ID of the webhook
      #
      # @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Hash{Symbol=>Object}, nil]
      #
      # @see Onlyfansapi::Models::WebhookDeleteParams
      def delete(webhook_id, params = {})
        @client.request(
          method: :delete,
          path: ["api/webhooks/%1$s", webhook_id],
          model: Onlyfansapi::Internal::Type::HashOf[Onlyfansapi::Internal::Type::Unknown],
          options: params[:request_options]
        )
      end

      # Retrieve a list of all available webhook event types
      #
      # @overload list_events(request_options: {})
      #
      # @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Onlyfansapi::Models::WebhookListEventsResponse]
      #
      # @see Onlyfansapi::Models::WebhookListEventsParams
      def list_events(params = {})
        @client.request(
          method: :get,
          path: "api/webhooks/events",
          model: Onlyfansapi::Models::WebhookListEventsResponse,
          options: params[:request_options]
        )
      end

      # @api private
      #
      # @param client [Onlyfansapi::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
