# frozen_string_literal: true

module Onlyfans
  module Resources
    class Settings
      # @return [Onlyfans::Resources::Settings::BlockedCountries]
      attr_reader :blocked_countries

      # @return [Onlyfans::Resources::Settings::WelcomeMessage]
      attr_reader :welcome_message

      # @return [Onlyfans::Resources::Settings::SocialMediaButtons]
      attr_reader :social_media_buttons

      # Returns the account settings
      #
      # @overload retrieve(account, request_options: {})
      #
      # @param account [String] The Account ID
      #
      # @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Onlyfans::Models::SettingRetrieveResponse]
      #
      # @see Onlyfans::Models::SettingRetrieveParams
      def retrieve(account, params = {})
        @client.request(
          method: :get,
          path: ["api/%1$s/settings", account],
          model: Onlyfans::Models::SettingRetrieveResponse,
          options: params[:request_options]
        )
      end

      # Check if a username is taken. Returns `false` if the username is available,
      # `true` if it is already taken.
      #
      # @overload check_username_availability(account, username:, request_options: {})
      #
      # @param account [String] The Account ID
      #
      # @param username [String] The username to check.
      #
      # @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Onlyfans::Models::SettingCheckUsernameAvailabilityResponse]
      #
      # @see Onlyfans::Models::SettingCheckUsernameAvailabilityParams
      def check_username_availability(account, params)
        parsed, options = Onlyfans::SettingCheckUsernameAvailabilityParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["api/%1$s/settings/username-exists", account],
          body: parsed,
          model: Onlyfans::Models::SettingCheckUsernameAvailabilityResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Onlyfans::Models::SettingUpdateProfileParams} for more details.
      #
      # Updates the account profile. **Only include the fields you want to update.** To
      # make a field empty, set it to `null`.
      #
      # @overload update_profile(account, about: nil, avatar: nil, header: nil, location: nil, name: nil, username: nil, website: nil, wishlist: nil, request_options: {})
      #
      # @param account [String] The Account ID
      #
      # @param about [String, nil] The new bio to use. Set to `null` to empty it.
      #
      # @param avatar [String] The new avatar to use. Must be a `ofapi_media_` ID. Refer to our `/media/upload`
      #
      # @param header [String] The new header (banner) to use. Must be a `ofapi_media_` ID. Refer to our `/medi
      #
      # @param location [String, nil] The new location to use. Set to `null` to empty it.
      #
      # @param name [String, nil] The new display name to use. Set to `null` to use the default display name.
      #
      # @param username [String] The new username to use. Make sure to first check if it exists using our `/setti
      #
      # @param website [String, nil] The new website URL to use. Must be a valid URL. Set to `null` to empty it.
      #
      # @param wishlist [String, nil] The new Amazon Wishlist URL to use. Must be a valid URL. Set to `null` to empty
      #
      # @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Onlyfans::Models::SettingUpdateProfileResponse]
      #
      # @see Onlyfans::Models::SettingUpdateProfileParams
      def update_profile(account, params = {})
        parsed, options = Onlyfans::SettingUpdateProfileParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["api/%1$s/settings/profile", account],
          body: parsed,
          model: Onlyfans::Models::SettingUpdateProfileResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Onlyfans::Models::SettingUpdateSubscriptionPriceParams} for more details.
      #
      # Update the account subscription price. Send `0` or `"free"` to make the account
      # free. ⚠️ WARNING! OnlyFans limits updating the subscription price to max. 3
      # times per day.
      #
      # @overload update_subscription_price(account, price:, request_options: {})
      #
      # @param account [String] The Account ID
      #
      # @param price [String] The new subscription price. Accepts `0`, `"free"`, or a number between 4.99 and
      #
      # @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Onlyfans::Models::SettingUpdateSubscriptionPriceResponse]
      #
      # @see Onlyfans::Models::SettingUpdateSubscriptionPriceParams
      def update_subscription_price(account, params)
        parsed, options = Onlyfans::SettingUpdateSubscriptionPriceParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["api/%1$s/settings/subscription-price", account],
          body: parsed,
          model: Onlyfans::Models::SettingUpdateSubscriptionPriceResponse,
          options: options
        )
      end

      # @api private
      #
      # @param client [Onlyfans::Client]
      def initialize(client:)
        @client = client
        @blocked_countries = Onlyfans::Resources::Settings::BlockedCountries.new(client: client)
        @welcome_message = Onlyfans::Resources::Settings::WelcomeMessage.new(client: client)
        @social_media_buttons = Onlyfans::Resources::Settings::SocialMediaButtons.new(client: client)
      end
    end
  end
end
