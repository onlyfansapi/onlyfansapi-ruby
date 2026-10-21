# typed: strong

module Onlyfans
  module Models
    class WebhookCreateParams < Onlyfans::Internal::Type::BaseModel
      extend Onlyfans::Internal::Type::RequestParameters::Converter
      include Onlyfans::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Onlyfans::WebhookCreateParams, Onlyfans::Internal::AnyHash)
        end

      # The account scope for the webhook (OnlyFans and Fansly webhooks alike). Use
      # "global" for all accounts, "inclusive" for only selected accounts, or
      # "exclusive" for all except selected accounts.
      sig { returns(String) }
      attr_accessor :account_scope

      # The URL of your webhook endpoint.
      sig { returns(String) }
      attr_accessor :endpoint_url

      # An array of webhook events to subscribe to. For all options, refer to our **List
      # Available Events** endpoint. A webhook is single-platform: subscribe to either
      # OnlyFans events or Fansly (`fansly.*`) events, never both in one webhook.
      sig { returns(T::Array[String]) }
      attr_accessor :events

      # An array of account IDs to apply the scope to. Use OnlyFans account IDs
      # (`acct_...`) for OnlyFans webhooks and Fansly account IDs (`fansly_acct_...`)
      # for Fansly webhooks. Required unless account_scope is "global".
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :account_ids

      sig { params(account_ids: T::Array[String]).void }
      attr_writer :account_ids

      # Optionally, add a signing secret to protect your webhook.
      sig { returns(T.nilable(String)) }
      attr_accessor :signing_secret

      sig do
        params(
          account_scope: String,
          endpoint_url: String,
          events: T::Array[String],
          account_ids: T::Array[String],
          signing_secret: T.nilable(String),
          request_options: Onlyfans::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The account scope for the webhook (OnlyFans and Fansly webhooks alike). Use
        # "global" for all accounts, "inclusive" for only selected accounts, or
        # "exclusive" for all except selected accounts.
        account_scope:,
        # The URL of your webhook endpoint.
        endpoint_url:,
        # An array of webhook events to subscribe to. For all options, refer to our **List
        # Available Events** endpoint. A webhook is single-platform: subscribe to either
        # OnlyFans events or Fansly (`fansly.*`) events, never both in one webhook.
        events:,
        # An array of account IDs to apply the scope to. Use OnlyFans account IDs
        # (`acct_...`) for OnlyFans webhooks and Fansly account IDs (`fansly_acct_...`)
        # for Fansly webhooks. Required unless account_scope is "global".
        account_ids: nil,
        # Optionally, add a signing secret to protect your webhook.
        signing_secret: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            account_scope: String,
            endpoint_url: String,
            events: T::Array[String],
            account_ids: T::Array[String],
            signing_secret: T.nilable(String),
            request_options: Onlyfans::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
