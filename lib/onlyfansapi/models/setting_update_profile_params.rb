# frozen_string_literal: true

module Onlyfansapi
  module Models
    # @see Onlyfansapi::Resources::Settings#update_profile
    class SettingUpdateProfileParams < Onlyfansapi::Internal::Type::BaseModel
      extend Onlyfansapi::Internal::Type::RequestParameters::Converter
      include Onlyfansapi::Internal::Type::RequestParameters

      # @!attribute account
      #
      #   @return [String]
      required :account, String

      # @!attribute about
      #   The new bio to use. Set to `null` to empty it.
      #
      #   @return [String, nil]
      optional :about, String, nil?: true

      # @!attribute avatar
      #   The new avatar to use. Must be a `ofapi_media_` ID. Refer to our `/media/upload`
      #   endpoint on how to get this.
      #
      #   @return [String, nil]
      optional :avatar, String

      # @!attribute header
      #   The new header (banner) to use. Must be a `ofapi_media_` ID. Refer to our
      #   `/media/upload` endpoint on how to get this.
      #
      #   @return [String, nil]
      optional :header, String

      # @!attribute location
      #   The new location to use. Set to `null` to empty it.
      #
      #   @return [String, nil]
      optional :location, String, nil?: true

      # @!attribute name
      #   The new display name to use. Set to `null` to use the default display name.
      #
      #   @return [String, nil]
      optional :name, String, nil?: true

      # @!attribute username
      #   The new username to use. Make sure to first check if it exists using our
      #   `/settings/username-exists` endpoint.
      #
      #   @return [String, nil]
      optional :username, String

      # @!attribute website
      #   The new website URL to use. Must be a valid URL. Set to `null` to empty it.
      #
      #   @return [String, nil]
      optional :website, String, nil?: true

      # @!attribute wishlist
      #   The new Amazon Wishlist URL to use. Must be a valid URL. Set to `null` to empty
      #   it.
      #
      #   @return [String, nil]
      optional :wishlist, String, nil?: true

      # @!method initialize(account:, about: nil, avatar: nil, header: nil, location: nil, name: nil, username: nil, website: nil, wishlist: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Onlyfansapi::Models::SettingUpdateProfileParams} for more details.
      #
      #   @param account [String]
      #
      #   @param about [String, nil] The new bio to use. Set to `null` to empty it.
      #
      #   @param avatar [String] The new avatar to use. Must be a `ofapi_media_` ID. Refer to our `/media/upload`
      #
      #   @param header [String] The new header (banner) to use. Must be a `ofapi_media_` ID. Refer to our `/medi
      #
      #   @param location [String, nil] The new location to use. Set to `null` to empty it.
      #
      #   @param name [String, nil] The new display name to use. Set to `null` to use the default display name.
      #
      #   @param username [String] The new username to use. Make sure to first check if it exists using our `/setti
      #
      #   @param website [String, nil] The new website URL to use. Must be a valid URL. Set to `null` to empty it.
      #
      #   @param wishlist [String, nil] The new Amazon Wishlist URL to use. Must be a valid URL. Set to `null` to empty
      #
      #   @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
