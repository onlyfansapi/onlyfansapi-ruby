# typed: strong

module Onlyfansapi
  module Models
    class WebhookCreateParams < Onlyfansapi::Internal::Type::BaseModel
      extend Onlyfansapi::Internal::Type::RequestParameters::Converter
      include Onlyfansapi::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Onlyfansapi::WebhookCreateParams,
            Onlyfansapi::Internal::AnyHash
          )
        end

      # The URL of your webhook endpoint.
      sig { returns(String) }
      attr_accessor :endpoint_url

      # An array of webhook events to subscribe to. Options: `messages.received`,
      # `messages.sent`, `messages.ppv.unlocked`, `subscriptions.new`, `users.typing`,
      # `posts.liked`, `accounts.connected`, `accounts.reconnected`,
      # `accounts.session_expired`, `accounts.authentication_failed`,
      # `accounts.otp_code_required`, `accounts.face_otp_required`
      sig { returns(T::Array[String]) }
      attr_accessor :events

      # Optionally, add a signing secret to protect your webhook.
      sig { returns(T.nilable(String)) }
      attr_accessor :signing_secret

      sig do
        params(
          endpoint_url: String,
          events: T::Array[String],
          signing_secret: T.nilable(String),
          request_options: Onlyfansapi::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
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

      sig do
        override.returns(
          {
            endpoint_url: String,
            events: T::Array[String],
            signing_secret: T.nilable(String),
            request_options: Onlyfansapi::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
