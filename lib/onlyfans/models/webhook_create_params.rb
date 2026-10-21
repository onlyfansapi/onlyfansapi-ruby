# frozen_string_literal: true

module Onlyfans
  module Models
    # @see Onlyfans::Resources::Webhooks#create
    class WebhookCreateParams < Onlyfans::Internal::Type::BaseModel
      extend Onlyfans::Internal::Type::RequestParameters::Converter
      include Onlyfans::Internal::Type::RequestParameters

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

      # @!attribute signing_secret
      #   Optionally, add a signing secret to protect your webhook.
      #
      #   @return [String, nil]
      optional :signing_secret, String, nil?: true

      # @!method initialize(account_scope:, endpoint_url:, events:, account_ids: nil, signing_secret: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Onlyfans::Models::WebhookCreateParams} for more details.
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
      #   @param signing_secret [String, nil] Optionally, add a signing secret to protect your webhook.
      #
      #   @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
