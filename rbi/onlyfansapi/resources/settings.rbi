# typed: strong

module Onlyfansapi
  module Resources
    class Settings
      sig { returns(Onlyfansapi::Resources::Settings::BlockedCountries) }
      attr_reader :blocked_countries

      sig { returns(Onlyfansapi::Resources::Settings::WelcomeMessage) }
      attr_reader :welcome_message

      sig { returns(Onlyfansapi::Resources::Settings::SocialMediaButtons) }
      attr_reader :social_media_buttons

      # Returns the account settings
      sig do
        params(
          account: String,
          request_options: Onlyfansapi::RequestOptions::OrHash
        ).returns(Onlyfansapi::Models::SettingRetrieveResponse)
      end
      def retrieve(
        # The Account ID
        account,
        request_options: {}
      )
      end

      # Check if a username is taken. Returns `false` if the username is available,
      # `true` if it is already taken.
      sig do
        params(
          account: String,
          username: String,
          request_options: Onlyfansapi::RequestOptions::OrHash
        ).returns(Onlyfansapi::Models::SettingCheckUsernameAvailabilityResponse)
      end
      def check_username_availability(
        # The Account ID
        account,
        # The username to check.
        username:,
        request_options: {}
      )
      end

      # Updates the account profile. **Only include the fields you want to update.** To
      # make a field empty, set it to `null`.
      sig do
        params(
          account: String,
          about: T.nilable(String),
          avatar: String,
          header: String,
          location: T.nilable(String),
          name: T.nilable(String),
          username: String,
          website: T.nilable(String),
          wishlist: T.nilable(String),
          request_options: Onlyfansapi::RequestOptions::OrHash
        ).returns(Onlyfansapi::Models::SettingUpdateProfileResponse)
      end
      def update_profile(
        # The Account ID
        account,
        # The new bio to use. Set to `null` to empty it.
        about: nil,
        # The new avatar to use. Must be a `ofapi_media_` ID. Refer to our `/media/upload`
        # endpoint on how to get this.
        avatar: nil,
        # The new header (banner) to use. Must be a `ofapi_media_` ID. Refer to our
        # `/media/upload` endpoint on how to get this.
        header: nil,
        # The new location to use. Set to `null` to empty it.
        location: nil,
        # The new display name to use. Set to `null` to use the default display name.
        name: nil,
        # The new username to use. Make sure to first check if it exists using our
        # `/settings/username-exists` endpoint.
        username: nil,
        # The new website URL to use. Must be a valid URL. Set to `null` to empty it.
        website: nil,
        # The new Amazon Wishlist URL to use. Must be a valid URL. Set to `null` to empty
        # it.
        wishlist: nil,
        request_options: {}
      )
      end

      # Update the account subscription price. Send `0` or `"free"` to make the account
      # free. ⚠️ WARNING! OnlyFans limits updating the subscription price to max. 3
      # times per day.
      sig do
        params(
          account: String,
          price: String,
          request_options: Onlyfansapi::RequestOptions::OrHash
        ).returns(Onlyfansapi::Models::SettingUpdateSubscriptionPriceResponse)
      end
      def update_subscription_price(
        # The Account ID
        account,
        # The new subscription price. Accepts `0`, `"free"`, or a number between 4.99
        # and 200.
        price:,
        request_options: {}
      )
      end

      # @api private
      sig { params(client: Onlyfansapi::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
