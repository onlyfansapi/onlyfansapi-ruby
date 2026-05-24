# frozen_string_literal: true

module Onlyfansapi
  module Resources
    # Operations related to user account settings.
    class Settings
      # Returns the account settings
      #
      # @overload retrieve(account, request_options: {})
      #
      # @param account [String] The Account ID
      #
      # @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Onlyfansapi::Models::SettingRetrieveResponse]
      #
      # @see Onlyfansapi::Models::SettingRetrieveParams
      def retrieve(account, params = {})
        @client.request(
          method: :get,
          path: ["api/%1$s/settings", account],
          model: Onlyfansapi::Models::SettingRetrieveResponse,
          options: params[:request_options]
        )
      end

      # Check if a username is taken. Returns `false` if the username is available,
      # `true` if it is already taken.
      #
      # @overload check_username_exists(account, username:, request_options: {})
      #
      # @param account [String] The Account ID
      #
      # @param username [String] The username to check.
      #
      # @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Onlyfansapi::Models::SettingCheckUsernameExistsResponse]
      #
      # @see Onlyfansapi::Models::SettingCheckUsernameExistsParams
      def check_username_exists(account, params)
        parsed, options = Onlyfansapi::SettingCheckUsernameExistsParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["api/%1$s/settings/username-exists", account],
          body: parsed,
          model: Onlyfansapi::Models::SettingCheckUsernameExistsResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Onlyfansapi::Models::SettingUpdateProfileParams} for more details.
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
      # @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Onlyfansapi::Models::SettingUpdateProfileResponse]
      #
      # @see Onlyfansapi::Models::SettingUpdateProfileParams
      def update_profile(account, params = {})
        parsed, options = Onlyfansapi::SettingUpdateProfileParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["api/%1$s/settings/profile", account],
          body: parsed,
          model: Onlyfansapi::Models::SettingUpdateProfileResponse,
          options: options
        )
      end

      # @api private
      #
      # @param client [Onlyfansapi::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
