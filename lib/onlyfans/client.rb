# frozen_string_literal: true

module Onlyfans
  class Client < Onlyfans::Internal::Transport::BaseClient
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

    # @return [Onlyfans::Resources::Whoami]
    attr_reader :whoami

    # Endpoints for your linked accounts
    # @return [Onlyfans::Resources::Accounts]
    attr_reader :accounts

    # Endpoints for your linked accounts
    # @return [Onlyfans::Resources::Me]
    attr_reader :me

    # @return [Onlyfans::Resources::Analytics]
    attr_reader :analytics

    # Operations related to user banking details, payout methods, legal and tax
    # information, and account country settings.
    # @return [Onlyfans::Resources::Banking]
    attr_reader :banking

    # @return [Onlyfans::Resources::Chargebacks]
    attr_reader :chargebacks

    # @return [Onlyfans::Resources::Chats]
    attr_reader :chats

    # @return [Onlyfans::Resources::Messages]
    attr_reader :messages

    # @return [Onlyfans::Resources::ClientSessions]
    attr_reader :client_sessions

    # @return [Onlyfans::Resources::Authenticate]
    attr_reader :authenticate

    # APIs for managing data exports
    # @return [Onlyfans::Resources::DataExports]
    attr_reader :data_exports

    # @return [Onlyfans::Resources::Engagement]
    attr_reader :engagement

    # APIs for managing OnlyFans fans (subscribers)
    # @return [Onlyfans::Resources::Fans]
    attr_reader :fans

    # APIs for managing OnlyFans followings (people you're subscribed to)
    # @return [Onlyfans::Resources::Following]
    attr_reader :following

    # APIs for managing Free Trial Links
    # @return [Onlyfans::Resources::TrialLinks]
    attr_reader :trial_links

    # @return [Onlyfans::Resources::Giphy]
    attr_reader :giphy

    # APIs for managing tags on free trial links, tracking links, and Smart Links
    # @return [Onlyfans::Resources::LinkTags]
    attr_reader :link_tags

    # @return [Onlyfans::Resources::MassMessaging]
    attr_reader :mass_messaging

    # @return [Onlyfans::Resources::Media]
    attr_reader :media

    # Endpoints for managingr account notifications
    # @return [Onlyfans::Resources::Notifications]
    attr_reader :notifications

    # @return [Onlyfans::Resources::Payouts]
    attr_reader :payouts

    # APIs for managing OnlyFans posts
    # @return [Onlyfans::Resources::Posts]
    attr_reader :posts

    # @return [Onlyfans::Resources::Promotions]
    attr_reader :promotions

    # @return [Onlyfans::Resources::Profiles]
    attr_reader :profiles

    # @return [Onlyfans::Resources::Search]
    attr_reader :search

    # @return [Onlyfans::Resources::Queue]
    attr_reader :queue

    # APIs for managing OnlyFans release forms
    # @return [Onlyfans::Resources::ReleaseForms]
    attr_reader :release_forms

    # @return [Onlyfans::Resources::SavedForLater]
    attr_reader :saved_for_later

    # @return [Onlyfans::Resources::Settings]
    attr_reader :settings

    # APIs for Free Trial Links that other OF creators have shared with this account.
    # Revenue, cost, and spender data are not available for shared links.
    # @return [Onlyfans::Resources::SharedTrialLinks]
    attr_reader :shared_trial_links

    # APIs for Tracking Links (campaigns) that other OF creators have shared with this
    # account. Revenue, cost, and spender data are not available for shared campaigns.
    # @return [Onlyfans::Resources::SharedTrackingLinks]
    attr_reader :shared_tracking_links

    # APIs for managing Smart Link postback destinations
    # @return [Onlyfans::Resources::SmartLinkPostbacks]
    attr_reader :smart_link_postbacks

    # APIs for managing Smart Links (Free Trial Links and Tracking Links with pooled
    # inventory)
    # @return [Onlyfans::Resources::SmartLinks]
    attr_reader :smart_links

    # @return [Onlyfans::Resources::Statistics]
    attr_reader :statistics

    # @return [Onlyfans::Resources::Subscribers]
    attr_reader :subscribers

    # @return [Onlyfans::Resources::Stored]
    attr_reader :stored

    # APIs for managing OnlyFans stories
    # @return [Onlyfans::Resources::Stories]
    attr_reader :stories

    # @return [Onlyfans::Resources::Bundles]
    attr_reader :bundles

    # APIs for managing tracking links
    # @return [Onlyfans::Resources::TrackingLinks]
    attr_reader :tracking_links

    # APIs for managing OnlyFans transactions
    # @return [Onlyfans::Resources::Transactions]
    attr_reader :transactions

    # @return [Onlyfans::Resources::UserLists]
    attr_reader :user_lists

    # APIs for fetching OnlyFans users
    # @return [Onlyfans::Resources::Users]
    attr_reader :users

    # @return [Onlyfans::Resources::Webhooks]
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

      @whoami = Onlyfans::Resources::Whoami.new(client: self)
      @accounts = Onlyfans::Resources::Accounts.new(client: self)
      @me = Onlyfans::Resources::Me.new(client: self)
      @analytics = Onlyfans::Resources::Analytics.new(client: self)
      @banking = Onlyfans::Resources::Banking.new(client: self)
      @chargebacks = Onlyfans::Resources::Chargebacks.new(client: self)
      @chats = Onlyfans::Resources::Chats.new(client: self)
      @messages = Onlyfans::Resources::Messages.new(client: self)
      @client_sessions = Onlyfans::Resources::ClientSessions.new(client: self)
      @authenticate = Onlyfans::Resources::Authenticate.new(client: self)
      @data_exports = Onlyfans::Resources::DataExports.new(client: self)
      @engagement = Onlyfans::Resources::Engagement.new(client: self)
      @fans = Onlyfans::Resources::Fans.new(client: self)
      @following = Onlyfans::Resources::Following.new(client: self)
      @trial_links = Onlyfans::Resources::TrialLinks.new(client: self)
      @giphy = Onlyfans::Resources::Giphy.new(client: self)
      @link_tags = Onlyfans::Resources::LinkTags.new(client: self)
      @mass_messaging = Onlyfans::Resources::MassMessaging.new(client: self)
      @media = Onlyfans::Resources::Media.new(client: self)
      @notifications = Onlyfans::Resources::Notifications.new(client: self)
      @payouts = Onlyfans::Resources::Payouts.new(client: self)
      @posts = Onlyfans::Resources::Posts.new(client: self)
      @promotions = Onlyfans::Resources::Promotions.new(client: self)
      @profiles = Onlyfans::Resources::Profiles.new(client: self)
      @search = Onlyfans::Resources::Search.new(client: self)
      @queue = Onlyfans::Resources::Queue.new(client: self)
      @release_forms = Onlyfans::Resources::ReleaseForms.new(client: self)
      @saved_for_later = Onlyfans::Resources::SavedForLater.new(client: self)
      @settings = Onlyfans::Resources::Settings.new(client: self)
      @shared_trial_links = Onlyfans::Resources::SharedTrialLinks.new(client: self)
      @shared_tracking_links = Onlyfans::Resources::SharedTrackingLinks.new(client: self)
      @smart_link_postbacks = Onlyfans::Resources::SmartLinkPostbacks.new(client: self)
      @smart_links = Onlyfans::Resources::SmartLinks.new(client: self)
      @statistics = Onlyfans::Resources::Statistics.new(client: self)
      @subscribers = Onlyfans::Resources::Subscribers.new(client: self)
      @stored = Onlyfans::Resources::Stored.new(client: self)
      @stories = Onlyfans::Resources::Stories.new(client: self)
      @bundles = Onlyfans::Resources::Bundles.new(client: self)
      @tracking_links = Onlyfans::Resources::TrackingLinks.new(client: self)
      @transactions = Onlyfans::Resources::Transactions.new(client: self)
      @user_lists = Onlyfans::Resources::UserLists.new(client: self)
      @users = Onlyfans::Resources::Users.new(client: self)
      @webhooks = Onlyfans::Resources::Webhooks.new(client: self)
    end
  end
end
