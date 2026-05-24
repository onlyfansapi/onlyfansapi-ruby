# typed: strong

module Onlyfansapi
  module Resources
    class Webhooks
      # Create a new webhook for your Team
      sig do
        params(
          endpoint_url: String,
          events: T::Array[String],
          signing_secret: T.nilable(String),
          request_options: Onlyfansapi::RequestOptions::OrHash
        ).returns(Onlyfansapi::Models::WebhookCreateResponse)
      end
      def create(
        # The URL of your webhook endpoint.
        endpoint_url:,
        # An array of webhook events to subscribe to. Options: `messages.received`,
        # `messages.sent`, `messages.ppv.unlocked`, `subscriptions.new`, `users.typing`,
        # `posts.liked`, `accounts.connected`, `accounts.reconnected`,
        # `accounts.session_expired`, `accounts.authentication_failed`,
        # `accounts.otp_code_required`, `accounts.face_otp_required`
        events:,
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
