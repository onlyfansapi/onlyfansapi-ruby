# typed: strong

module Onlyfansapi
  module Resources
    class Settings
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
        ).returns(Onlyfansapi::Models::SettingCheckUsernameExistsResponse)
      end
      def check_username_exists(
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

      # @api private
      sig { params(client: Onlyfansapi::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
