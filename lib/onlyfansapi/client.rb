# frozen_string_literal: true

module Onlyfansapi
  class Client < Onlyfansapi::Internal::Transport::BaseClient
    # Default max number of retries to attempt after a failed retryable request.
    DEFAULT_MAX_RETRIES = 2

    # Default per-request timeout.
    DEFAULT_TIMEOUT_IN_SECONDS = 60.0

    # Default initial retry delay in seconds.
    # Overall delay is calculated using exponential backoff + jitter.
    DEFAULT_INITIAL_RETRY_DELAY = 0.5

    # Default max retry delay in seconds.
    DEFAULT_MAX_RETRY_DELAY = 8.0

    # Get your API Key from OnlyFansAPI Console - https://app.onlyfansapi.com/api-keys
    # @return [String]
    attr_reader :api_key

    # @return [Onlyfansapi::Resources::Whoami]
    attr_reader :whoami

    # Endpoints for your linked accounts
    # @return [Onlyfansapi::Resources::Accounts]
    attr_reader :accounts

    # Endpoints for your linked accounts
    # @return [Onlyfansapi::Resources::Me]
    attr_reader :me

    # @return [Onlyfansapi::Resources::Analytics]
    attr_reader :analytics

    # Operations related to user banking details, payout methods, legal and tax
    # information, and account country settings.
    # @return [Onlyfansapi::Resources::Banking]
    attr_reader :banking

    # @return [Onlyfansapi::Resources::Chargebacks]
    attr_reader :chargebacks

    # @return [Onlyfansapi::Resources::Chats]
    attr_reader :chats

    # @return [Onlyfansapi::Resources::Messages]
    attr_reader :messages

    # @return [Onlyfansapi::Resources::ClientSessions]
    attr_reader :client_sessions

    # @return [Onlyfansapi::Resources::Authenticate]
    attr_reader :authenticate

    # APIs for managing data exports
    # @return [Onlyfansapi::Resources::DataExports]
    attr_reader :data_exports

    # @return [Onlyfansapi::Resources::Engagement]
    attr_reader :engagement

    # APIs for managing OnlyFans fans (subscribers)
    # @return [Onlyfansapi::Resources::Fans]
    attr_reader :fans

    # APIs for managing OnlyFans followings (people you're subscribed to)
    # @return [Onlyfansapi::Resources::Following]
    attr_reader :following

    # APIs for managing Free Trial Links
    # @return [Onlyfansapi::Resources::TrialLinks]
    attr_reader :trial_links

    # @return [Onlyfansapi::Resources::Giphy]
    attr_reader :giphy

    # APIs for managing tags on free trial links and tracking links
    # @return [Onlyfansapi::Resources::LinkTags]
    attr_reader :link_tags

    # @return [Onlyfansapi::Resources::MassMessaging]
    attr_reader :mass_messaging

    # @return [Onlyfansapi::Resources::Media]
    attr_reader :media

    # Endpoints for managingr account notifications
    # @return [Onlyfansapi::Resources::Notifications]
    attr_reader :notifications

    # @return [Onlyfansapi::Resources::Payouts]
    attr_reader :payouts

    # APIs for managing OnlyFans posts
    # @return [Onlyfansapi::Resources::Posts]
    attr_reader :posts

    # @return [Onlyfansapi::Resources::Promotions]
    attr_reader :promotions

    # @return [Onlyfansapi::Resources::Profiles]
    attr_reader :profiles

    # @return [Onlyfansapi::Resources::Search]
    attr_reader :search

    # @return [Onlyfansapi::Resources::Queue]
    attr_reader :queue

    # APIs for managing OnlyFans release forms
    # @return [Onlyfansapi::Resources::ReleaseForms]
    attr_reader :release_forms

    # @return [Onlyfansapi::Resources::SavedForLater]
    attr_reader :saved_for_later

    # @return [Onlyfansapi::Resources::Settings]
    attr_reader :settings

    # APIs for Free Trial Links that other OF creators have shared with this account.
    # Revenue, cost, and spender data are not available for shared links.
    # @return [Onlyfansapi::Resources::SharedTrialLinks]
    attr_reader :shared_trial_links

    # APIs for Tracking Links (campaigns) that other OF creators have shared with this
    # account. Revenue, cost, and spender data are not available for shared campaigns.
    # @return [Onlyfansapi::Resources::SharedTrackingLinks]
    attr_reader :shared_tracking_links

    # APIs for managing Smart Link postback destinations
    # @return [Onlyfansapi::Resources::SmartLinkPostbacks]
    attr_reader :smart_link_postbacks

    # APIs for managing Smart Links (Free Trial Links and Tracking Links with pooled
    # inventory)
    # @return [Onlyfansapi::Resources::SmartLinks]
    attr_reader :smart_links

    # @return [Onlyfansapi::Resources::Statistics]
    attr_reader :statistics

    # @return [Onlyfansapi::Resources::Subscribers]
    attr_reader :subscribers

    # @return [Onlyfansapi::Resources::Stored]
    attr_reader :stored

    # APIs for managing OnlyFans stories
    # @return [Onlyfansapi::Resources::Stories]
    attr_reader :stories

    # @return [Onlyfansapi::Resources::Bundles]
    attr_reader :bundles

    # APIs for managing tracking links
    # @return [Onlyfansapi::Resources::TrackingLinks]
    attr_reader :tracking_links

    # APIs for managing OnlyFans transactions
    # @return [Onlyfansapi::Resources::Transactions]
    attr_reader :transactions

    # @return [Onlyfansapi::Resources::UserLists]
    attr_reader :user_lists

    # APIs for fetching OnlyFans users
    # @return [Onlyfansapi::Resources::Users]
    attr_reader :users

    # @return [Onlyfansapi::Resources::Webhooks]
    attr_reader :webhooks

    # @api private
    #
    # @return [Hash{String=>String}]
    private def auth_headers
      return {} if @api_key.nil?

      {"authorization" => "Bearer #{@api_key}"}
    end

    # Creates and returns a new client for interacting with the API.
    #
    # @param api_key [String, nil] Get your API Key from OnlyFansAPI Console - https://app.onlyfansapi.com/api-keys
    # Defaults to `ENV["ONLYFANSAPI_API_KEY"]`
    #
    # @param base_url [String, nil] Override the default base URL for the API, e.g.,
    # `"https://api.example.com/v2/"`. Defaults to `ENV["ONLY_FANS_API_BASE_URL"]`
    #
    # @param max_retries [Integer] Max number of retries to attempt after a failed retryable request.
    #
    # @param timeout [Float]
    #
    # @param initial_retry_delay [Float]
    #
    # @param max_retry_delay [Float]
    def initialize(
      api_key: ENV["ONLYFANSAPI_API_KEY"],
      base_url: ENV["ONLY_FANS_API_BASE_URL"],
      max_retries: self.class::DEFAULT_MAX_RETRIES,
      timeout: self.class::DEFAULT_TIMEOUT_IN_SECONDS,
      initial_retry_delay: self.class::DEFAULT_INITIAL_RETRY_DELAY,
      max_retry_delay: self.class::DEFAULT_MAX_RETRY_DELAY
    )
      base_url ||= "https://app.onlyfansapi.com"

      if api_key.nil?
        raise ArgumentError.new("api_key is required, and can be set via environ: \"ONLYFANSAPI_API_KEY\"")
      end

      headers = {}
      custom_headers_env = ENV["ONLY_FANS_API_CUSTOM_HEADERS"]
      unless custom_headers_env.nil?
        parsed = {}
        custom_headers_env.split("\n").each do |line|
          colon = line.index(":")
          unless colon.nil?
            parsed[line[0...colon].strip] = line[(colon + 1)..].strip
          end
        end
        headers = parsed.merge(headers)
      end

      @api_key = api_key.to_s

      super(
        base_url: base_url,
        timeout: timeout,
        max_retries: max_retries,
        initial_retry_delay: initial_retry_delay,
        max_retry_delay: max_retry_delay,
        headers: headers
      )

      @whoami = Onlyfansapi::Resources::Whoami.new(client: self)
      @accounts = Onlyfansapi::Resources::Accounts.new(client: self)
      @me = Onlyfansapi::Resources::Me.new(client: self)
      @analytics = Onlyfansapi::Resources::Analytics.new(client: self)
      @banking = Onlyfansapi::Resources::Banking.new(client: self)
      @chargebacks = Onlyfansapi::Resources::Chargebacks.new(client: self)
      @chats = Onlyfansapi::Resources::Chats.new(client: self)
      @messages = Onlyfansapi::Resources::Messages.new(client: self)
      @client_sessions = Onlyfansapi::Resources::ClientSessions.new(client: self)
      @authenticate = Onlyfansapi::Resources::Authenticate.new(client: self)
      @data_exports = Onlyfansapi::Resources::DataExports.new(client: self)
      @engagement = Onlyfansapi::Resources::Engagement.new(client: self)
      @fans = Onlyfansapi::Resources::Fans.new(client: self)
      @following = Onlyfansapi::Resources::Following.new(client: self)
      @trial_links = Onlyfansapi::Resources::TrialLinks.new(client: self)
      @giphy = Onlyfansapi::Resources::Giphy.new(client: self)
      @link_tags = Onlyfansapi::Resources::LinkTags.new(client: self)
      @mass_messaging = Onlyfansapi::Resources::MassMessaging.new(client: self)
      @media = Onlyfansapi::Resources::Media.new(client: self)
      @notifications = Onlyfansapi::Resources::Notifications.new(client: self)
      @payouts = Onlyfansapi::Resources::Payouts.new(client: self)
      @posts = Onlyfansapi::Resources::Posts.new(client: self)
      @promotions = Onlyfansapi::Resources::Promotions.new(client: self)
      @profiles = Onlyfansapi::Resources::Profiles.new(client: self)
      @search = Onlyfansapi::Resources::Search.new(client: self)
      @queue = Onlyfansapi::Resources::Queue.new(client: self)
      @release_forms = Onlyfansapi::Resources::ReleaseForms.new(client: self)
      @saved_for_later = Onlyfansapi::Resources::SavedForLater.new(client: self)
      @settings = Onlyfansapi::Resources::Settings.new(client: self)
      @shared_trial_links = Onlyfansapi::Resources::SharedTrialLinks.new(client: self)
      @shared_tracking_links = Onlyfansapi::Resources::SharedTrackingLinks.new(client: self)
      @smart_link_postbacks = Onlyfansapi::Resources::SmartLinkPostbacks.new(client: self)
      @smart_links = Onlyfansapi::Resources::SmartLinks.new(client: self)
      @statistics = Onlyfansapi::Resources::Statistics.new(client: self)
      @subscribers = Onlyfansapi::Resources::Subscribers.new(client: self)
      @stored = Onlyfansapi::Resources::Stored.new(client: self)
      @stories = Onlyfansapi::Resources::Stories.new(client: self)
      @bundles = Onlyfansapi::Resources::Bundles.new(client: self)
      @tracking_links = Onlyfansapi::Resources::TrackingLinks.new(client: self)
      @transactions = Onlyfansapi::Resources::Transactions.new(client: self)
      @user_lists = Onlyfansapi::Resources::UserLists.new(client: self)
      @users = Onlyfansapi::Resources::Users.new(client: self)
      @webhooks = Onlyfansapi::Resources::Webhooks.new(client: self)
    end
  end
end
