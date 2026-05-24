# typed: strong

module Onlyfansapi
  module Models
    class SettingUpdateProfileParams < Onlyfansapi::Internal::Type::BaseModel
      extend Onlyfansapi::Internal::Type::RequestParameters::Converter
      include Onlyfansapi::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Onlyfansapi::SettingUpdateProfileParams,
            Onlyfansapi::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :account

      # The new bio to use. Set to `null` to empty it.
      sig { returns(T.nilable(String)) }
      attr_accessor :about

      # The new avatar to use. Must be a `ofapi_media_` ID. Refer to our `/media/upload`
      # endpoint on how to get this.
      sig { returns(T.nilable(String)) }
      attr_reader :avatar

      sig { params(avatar: String).void }
      attr_writer :avatar

      # The new header (banner) to use. Must be a `ofapi_media_` ID. Refer to our
      # `/media/upload` endpoint on how to get this.
      sig { returns(T.nilable(String)) }
      attr_reader :header

      sig { params(header: String).void }
      attr_writer :header

      # The new location to use. Set to `null` to empty it.
      sig { returns(T.nilable(String)) }
      attr_accessor :location

      # The new display name to use. Set to `null` to use the default display name.
      sig { returns(T.nilable(String)) }
      attr_accessor :name

      # The new username to use. Make sure to first check if it exists using our
      # `/settings/username-exists` endpoint.
      sig { returns(T.nilable(String)) }
      attr_reader :username

      sig { params(username: String).void }
      attr_writer :username

      # The new website URL to use. Must be a valid URL. Set to `null` to empty it.
      sig { returns(T.nilable(String)) }
      attr_accessor :website

      # The new Amazon Wishlist URL to use. Must be a valid URL. Set to `null` to empty
      # it.
      sig { returns(T.nilable(String)) }
      attr_accessor :wishlist

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
        ).returns(T.attached_class)
      end
      def self.new(
        account:,
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

      sig do
        override.returns(
          {
            account: String,
            about: T.nilable(String),
            avatar: String,
            header: String,
            location: T.nilable(String),
            name: T.nilable(String),
            username: String,
            website: T.nilable(String),
            wishlist: T.nilable(String),
            request_options: Onlyfansapi::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
