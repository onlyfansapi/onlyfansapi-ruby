# typed: strong

module Onlyfansapi
  module Resources
    class Webhooks
      # Create a new webhook for your Team
      sig do
        params(
          account_scope: String,
          endpoint_url: String,
          events: T::Array[String],
          account_ids: T::Array[String],
          signing_secret: T.nilable(String),
          request_options: Onlyfansapi::RequestOptions::OrHash
        ).returns(Onlyfansapi::Models::WebhookCreateResponse)
      end
      def create(
        # The account scope for the webhook. Use "global" for all accounts, "inclusive"
        # for only selected accounts, or "exclusive" for all except selected accounts.
        account_scope:,
        # The URL of your webhook endpoint.
        endpoint_url:,
        # An array of webhook events to subscribe to. For all options, refer to our **List
        # Available Events** endpoint.
        events:,
        # An array of account IDs to apply the scope to. Required unless account_scope is
        # "global".
        account_ids: nil,
        # Optionally, add a signing secret to protect your webhook.
        signing_secret: nil,
        request_options: {}
      )
      end

      # Delete an existing webhook
      sig do
        params(
          webhook_id: String,
          request_options: Onlyfansapi::RequestOptions::OrHash
        ).returns(T.nilable(T.anything))
      end
      def delete(
        # The ID of the webhook
        webhook_id,
        request_options: {}
      )
      end

      # @api private
      sig { params(client: Onlyfansapi::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
