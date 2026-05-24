# typed: strong

module Onlyfansapi
  class Client < Onlyfansapi::Internal::Transport::BaseClient
    DEFAULT_MAX_RETRIES = 2

    DEFAULT_TIMEOUT_IN_SECONDS = T.let(60.0, Float)

    DEFAULT_INITIAL_RETRY_DELAY = T.let(0.5, Float)

    DEFAULT_MAX_RETRY_DELAY = T.let(8.0, Float)

    # Get your API Key from OnlyFansAPI Console - https://app.onlyfansapi.com/api-keys
    sig { returns(String) }
    attr_reader :api_key

    sig { returns(Onlyfansapi::Resources::Whoami) }
    attr_reader :whoami

    # Endpoints for your linked accounts
    sig { returns(Onlyfansapi::Resources::Accounts) }
    attr_reader :accounts

    # Endpoints for your linked accounts
    sig { returns(Onlyfansapi::Resources::Me) }
    attr_reader :me

    # Operations related to user banking details, payout methods, legal and tax
    # information, and account country settings.
    sig { returns(Onlyfansapi::Resources::Banking) }
    attr_reader :banking

    sig { returns(Onlyfansapi::Resources::Chats) }
    attr_reader :chats

    sig { returns(Onlyfansapi::Resources::ClientSessions) }
    attr_reader :client_sessions

    sig { returns(Onlyfansapi::Resources::UserLists) }
    attr_reader :user_lists

    sig { returns(Onlyfansapi::Resources::Authenticate) }
    attr_reader :authenticate

    sig { returns(Onlyfansapi::Resources::Workflows) }
    attr_reader :workflows

    # APIs for managing OnlyFans fans (subscribers)
    sig { returns(Onlyfansapi::Resources::Fans) }
    attr_reader :fans

    # APIs for managing OnlyFans followings (people you're subscribed to)
    sig { returns(Onlyfansapi::Resources::Following) }
    attr_reader :following

    # APIs for managing Free Trial Links
    sig { returns(Onlyfansapi::Resources::TrialLinks) }
    attr_reader :trial_links

    sig { returns(Onlyfansapi::Resources::MassMessaging) }
    attr_reader :mass_messaging

    sig { returns(Onlyfansapi::Resources::Media) }
    attr_reader :media

    # Endpoints for managingr account notifications
    sig { returns(Onlyfansapi::Resources::Notifications) }
    attr_reader :notifications

    sig { returns(Onlyfansapi::Resources::Payouts) }
    attr_reader :payouts

    # APIs for managing OnlyFans posts
    sig { returns(Onlyfansapi::Resources::Posts) }
    attr_reader :posts

    sig { returns(Onlyfansapi::Resources::Profiles) }
    attr_reader :profiles

    sig { returns(Onlyfansapi::Resources::Search) }
    attr_reader :search

    sig { returns(Onlyfansapi::Resources::Queue) }
    attr_reader :queue

    sig { returns(Onlyfansapi::Resources::SavedForLater) }
    attr_reader :saved_for_later

    sig { returns(Onlyfansapi::Resources::Settings) }
    attr_reader :settings

    sig { returns(Onlyfansapi::Resources::Statistics) }
    attr_reader :statistics

    sig { returns(Onlyfansapi::Resources::Subscribers) }
    attr_reader :subscribers

    # APIs for managing tracking links
    sig { returns(Onlyfansapi::Resources::TrackingLinks) }
    attr_reader :tracking_links

    # APIs for managing OnlyFans transactions
    sig { returns(Onlyfansapi::Resources::Transactions) }
    attr_reader :transactions

    # APIs for fetching OnlyFans users
    sig { returns(Onlyfansapi::Resources::Users) }
    attr_reader :users

    sig { returns(Onlyfansapi::Resources::Webhooks) }
    attr_reader :webhooks

    # @api private
    sig { override.returns(T::Hash[String, String]) }
    private def auth_headers
    end

    # Creates and returns a new client for interacting with the API.
    sig do
      params(
        api_key: T.nilable(String),
        base_url: T.nilable(String),
        max_retries: Integer,
        timeout: Float,
        initial_retry_delay: Float,
        max_retry_delay: Float
      ).returns(T.attached_class)
    end
    def self.new(
      # Get your API Key from OnlyFansAPI Console - https://app.onlyfansapi.com/api-keys
      # Defaults to `ENV["ONLYFANSAPI_API_KEY"]`
      api_key: ENV["ONLYFANSAPI_API_KEY"],
      # Override the default base URL for the API, e.g.,
      # `"https://api.example.com/v2/"`. Defaults to `ENV["ONLYFANSAPI_BASE_URL"]`
      base_url: ENV["ONLYFANSAPI_BASE_URL"],
      # Max number of retries to attempt after a failed retryable request.
      max_retries: Onlyfansapi::Client::DEFAULT_MAX_RETRIES,
      timeout: Onlyfansapi::Client::DEFAULT_TIMEOUT_IN_SECONDS,
      initial_retry_delay: Onlyfansapi::Client::DEFAULT_INITIAL_RETRY_DELAY,
      max_retry_delay: Onlyfansapi::Client::DEFAULT_MAX_RETRY_DELAY
    )
    end
  end
end
