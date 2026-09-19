# frozen_string_literal: true

module Onlyfans
  module Models
    # @see Onlyfans::Resources::Webhooks#update
    class WebhookUpdateParams < Onlyfans::Internal::Type::BaseModel
      extend Onlyfans::Internal::Type::RequestParameters::Converter
      include Onlyfans::Internal::Type::RequestParameters

      # @!attribute webhook_id
      #
      #   @return [String]
      required :webhook_id, String

      # @!attribute account_scope
      #   The account scope for the webhook (OnlyFans and Fansly webhooks alike). Use
      #   "global" for all accounts, "inclusive" for only selected accounts, or
      #   "exclusive" for all except selected accounts.
      #
      #   @return [String]
      required :account_scope, String

      # @!attribute endpoint_url
      #   The URL of your webhook endpoint.
      #
      #   @return [String]
      required :endpoint_url, String

      # @!attribute events
      #   An array of webhook events to subscribe to. For all options, refer to our **List
      #   Available Events** endpoint. A webhook is single-platform: subscribe to either
      #   OnlyFans events or Fansly (`fansly.*`) events, never both in one webhook.
      #
      #   @return [Array<String>]
      required :events, Onlyfans::Internal::Type::ArrayOf[String]

      # @!attribute account_ids
      #   An array of account IDs to apply the scope to. Use OnlyFans account IDs
      #   (`acct_...`) for OnlyFans webhooks and Fansly account IDs (`fansly_acct_...`)
      #   for Fansly webhooks. Required unless account_scope is "global".
      #
      #   @return [Array<String>, nil]
      optional :account_ids, Onlyfans::Internal::Type::ArrayOf[String]

      # @!attribute enabled
      #   Optionally, enabled/disable the webhook. This will stop/resume the sending of
      #   events, without having to delete the webhook.
      #
      #   @return [Boolean, nil]
      optional :enabled, Onlyfans::Internal::Type::Boolean, nil?: true

      # @!method initialize(webhook_id:, account_scope:, endpoint_url:, events:, account_ids: nil, enabled: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Onlyfans::Models::WebhookUpdateParams} for more details.
      #
      #   @param webhook_id [String]
      #
      #   @param account_scope [String] The account scope for the webhook (OnlyFans and Fansly webhooks alike). Use "glo
      #
      #   @param endpoint_url [String] The URL of your webhook endpoint.
      #
      #   @param events [Array<String>] An array of webhook events to subscribe to. For all options, refer to our
      #   \*\*List
      #
      #   @param account_ids [Array<String>] An array of account IDs to apply the scope to. Use OnlyFans account IDs
      #   (`acct\_.
      #
      #   @param enabled [Boolean, nil] Optionally, enabled/disable the webhook. This will stop/resume the sending of ev
      #
      #   @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
