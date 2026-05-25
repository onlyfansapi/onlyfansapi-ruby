# typed: strong

module Onlyfans
  class Client < Onlyfans::Internal::Transport::BaseClient
    DEFAULT_MAX_RETRIES = 2

    DEFAULT_TIMEOUT_IN_SECONDS = T.let(60.0, Float)

    DEFAULT_INITIAL_RETRY_DELAY = T.let(0.5, Float)

    DEFAULT_MAX_RETRY_DELAY = T.let(8.0, Float)

    # Get your API Key from OnlyFansAPI Console - https://app.onlyfansapi.com/api-keys
    sig { returns(String) }
    attr_reader :api_key

    sig { returns(Onlyfans::Resources::Whoami) }
    attr_reader :whoami

    # Endpoints for your linked accounts
    sig { returns(Onlyfans::Resources::Accounts) }
    attr_reader :accounts

    # Endpoints for your linked accounts
    sig { returns(Onlyfans::Resources::Me) }
    attr_reader :me

    sig { returns(Onlyfans::Resources::Analytics) }
    attr_reader :analytics

    # Operations related to user banking details, payout methods, legal and tax
    # information, and account country settings.
    sig { returns(Onlyfans::Resources::Banking) }
    attr_reader :banking

    sig { returns(Onlyfans::Resources::Chargebacks) }
    attr_reader :chargebacks

    sig { returns(Onlyfans::Resources::Chats) }
    attr_reader :chats

    sig { returns(Onlyfans::Resources::Messages) }
    attr_reader :messages

    sig { returns(Onlyfans::Resources::ClientSessions) }
    attr_reader :client_sessions

    sig { returns(Onlyfans::Resources::Authenticate) }
    attr_reader :authenticate

    # APIs for managing data exports
    sig { returns(Onlyfans::Resources::DataExports) }
    attr_reader :data_exports

    sig { returns(Onlyfans::Resources::Engagement) }
    attr_reader :engagement

    # APIs for managing OnlyFans fans (subscribers)
    sig { returns(Onlyfans::Resources::Fans) }
    attr_reader :fans

    # APIs for managing OnlyFans followings (people you're subscribed to)
    sig { returns(Onlyfans::Resources::Following) }
    attr_reader :following

    # APIs for managing Free Trial Links
    sig { returns(Onlyfans::Resources::TrialLinks) }
    attr_reader :trial_links

    sig { returns(Onlyfans::Resources::Giphy) }
    attr_reader :giphy

    # APIs for managing tags on free trial links and tracking links
    sig { returns(Onlyfans::Resources::LinkTags) }
    attr_reader :link_tags

    sig { returns(Onlyfans::Resources::MassMessaging) }
    attr_reader :mass_messaging

    sig { returns(Onlyfans::Resources::Media) }
    attr_reader :media

    # Endpoints for managingr account notifications
    sig { returns(Onlyfans::Resources::Notifications) }
    attr_reader :notifications

    sig { returns(Onlyfans::Resources::Payouts) }
    attr_reader :payouts

    # APIs for managing OnlyFans posts
    sig { returns(Onlyfans::Resources::Posts) }
    attr_reader :posts

    sig { returns(Onlyfans::Resources::Promotions) }
    attr_reader :promotions

    sig { returns(Onlyfans::Resources::Profiles) }
    attr_reader :profiles

    sig { returns(Onlyfans::Resources::Search) }
    attr_reader :search

    sig { returns(Onlyfans::Resources::Queue) }
    attr_reader :queue

    # APIs for managing OnlyFans release forms
    sig { returns(Onlyfans::Resources::ReleaseForms) }
    attr_reader :release_forms

    sig { returns(Onlyfans::Resources::SavedForLater) }
    attr_reader :saved_for_later

    sig { returns(Onlyfans::Resources::Settings) }
    attr_reader :settings

    # APIs for Free Trial Links that other OF creators have shared with this account.
    # Revenue, cost, and spender data are not available for shared links.
    sig { returns(Onlyfans::Resources::SharedTrialLinks) }
    attr_reader :shared_trial_links

    # APIs for Tracking Links (campaigns) that other OF creators have shared with this
    # account. Revenue, cost, and spender data are not available for shared campaigns.
    sig { returns(Onlyfans::Resources::SharedTrackingLinks) }
    attr_reader :shared_tracking_links

    # APIs for managing Smart Link postback destinations
    sig { returns(Onlyfans::Resources::SmartLinkPostbacks) }
    attr_reader :smart_link_postbacks

    # APIs for managing Smart Links (Free Trial Links and Tracking Links with pooled
    # inventory)
    sig { returns(Onlyfans::Resources::SmartLinks) }
    attr_reader :smart_links

    sig { returns(Onlyfans::Resources::Statistics) }
    attr_reader :statistics

    sig { returns(Onlyfans::Resources::Subscribers) }
    attr_reader :subscribers

    sig { returns(Onlyfans::Resources::Stored) }
    attr_reader :stored

    # APIs for managing OnlyFans stories
    sig { returns(Onlyfans::Resources::Stories) }
    attr_reader :stories

    sig { returns(Onlyfans::Resources::Bundles) }
    attr_reader :bundles

    # APIs for managing tracking links
    sig { returns(Onlyfans::Resources::TrackingLinks) }
    attr_reader :tracking_links

    # APIs for managing OnlyFans transactions
    sig { returns(Onlyfans::Resources::Transactions) }
    attr_reader :transactions

    sig { returns(Onlyfans::Resources::UserLists) }
    attr_reader :user_lists

    # APIs for fetching OnlyFans users
    sig { returns(Onlyfans::Resources::Users) }
    attr_reader :users

    sig { returns(Onlyfans::Resources::Webhooks) }
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
      # `"https://api.example.com/v2/"`. Defaults to `ENV["ONLY_FANS_API_BASE_URL"]`
      base_url: ENV["ONLY_FANS_API_BASE_URL"],
      # Max number of retries to attempt after a failed retryable request.
      max_retries: Onlyfans::Client::DEFAULT_MAX_RETRIES,
      timeout: Onlyfans::Client::DEFAULT_TIMEOUT_IN_SECONDS,
      initial_retry_delay: Onlyfans::Client::DEFAULT_INITIAL_RETRY_DELAY,
      max_retry_delay: Onlyfans::Client::DEFAULT_MAX_RETRY_DELAY
    )
    end
  end
end
