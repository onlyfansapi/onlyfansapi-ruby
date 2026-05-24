# frozen_string_literal: true

module Onlyfansapi
  module Models
    # @see Onlyfansapi::Resources::Webhooks#create
    class WebhookCreateParams < Onlyfansapi::Internal::Type::BaseModel
      extend Onlyfansapi::Internal::Type::RequestParameters::Converter
      include Onlyfansapi::Internal::Type::RequestParameters

      # @!attribute endpoint_url
      #   The URL of your webhook endpoint.
      #
      #   @return [String]
      required :endpoint_url, String

      # @!attribute events
      #   An array of webhook events to subscribe to. Options: `messages.received`,
      #   `messages.sent`, `messages.ppv.unlocked`, `subscriptions.new`, `users.typing`,
      #   `posts.liked`, `accounts.connected`, `accounts.reconnected`,
      #   `accounts.session_expired`, `accounts.authentication_failed`,
      #   `accounts.otp_code_required`, `accounts.face_otp_required`
      #
      #   @return [Array<String>]
      required :events, Onlyfansapi::Internal::Type::ArrayOf[String]

      # @!attribute signing_secret
      #   Optionally, add a signing secret to protect your webhook.
      #
      #   @return [String, nil]
      optional :signing_secret, String, nil?: true

      # @!method initialize(endpoint_url:, events:, signing_secret: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Onlyfansapi::Models::WebhookCreateParams} for more details.
      #
      #   @param endpoint_url [String] The URL of your webhook endpoint.
      #
      #   @param events [Array<String>] An array of webhook events to subscribe to. Options: `messages.received`, `messa
      #
      #   @param signing_secret [String, nil] Optionally, add a signing secret to protect your webhook.
      #
      #   @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
