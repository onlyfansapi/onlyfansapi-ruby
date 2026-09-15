# typed: strong

module Onlyfans
  module Models
    class WebhookUpdateParams < Onlyfans::Internal::Type::BaseModel
      extend Onlyfans::Internal::Type::RequestParameters::Converter
      include Onlyfans::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Onlyfans::WebhookUpdateParams, Onlyfans::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :webhook_id

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

      # Optionally, enabled/disable the webhook. This will stop/resume the sending of
      # events, without having to delete the webhook.
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :enabled

      sig do
        params(
          webhook_id: String,
          account_scope: String,
          endpoint_url: String,
          events: T::Array[String],
          account_ids: T::Array[String],
          enabled: T.nilable(T::Boolean),
          request_options: Onlyfans::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        webhook_id:,
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
        # Optionally, enabled/disable the webhook. This will stop/resume the sending of
        # events, without having to delete the webhook.
        enabled: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            webhook_id: String,
            account_scope: String,
            endpoint_url: String,
            events: T::Array[String],
            account_ids: T::Array[String],
            enabled: T.nilable(T::Boolean),
            request_options: Onlyfans::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
