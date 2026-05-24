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

      # Delete an existing webhook
      #
      # @overload delete(webhook_id, request_options: {})
      #
      # @param webhook_id [String] The ID of the webhook
      #
      # @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Object, nil]
      #
      # @see Onlyfansapi::Models::WebhookDeleteParams
      def delete(webhook_id, params = {})
        @client.request(
          method: :delete,
          path: ["api/webhooks/%1$s", webhook_id],
          model: Onlyfansapi::Internal::Type::Unknown,
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
