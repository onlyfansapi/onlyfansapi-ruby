# typed: strong

module Onlyfans
  module Models
    class MediaUploadParams < Onlyfans::Internal::Type::BaseModel
      extend Onlyfans::Internal::Type::RequestParameters::Converter
      include Onlyfans::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Onlyfans::MediaUploadParams, Onlyfans::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :account

      # Set to `true` to process uploads in the background. Returns a `polling_url` to
      # check status. Recommended for large files. Instead of polling, you can subscribe
      # to the `media_uploads.completed` and `media_uploads.failed` webhook events —
      # they only fire for async uploads.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :async

      sig { params(async: T::Boolean).void }
      attr_writer :async

      # The file to upload. Required if `file_url` is not provided. Maximum file size:
      # 100 MB (limited by Cloudflare).
      sig { returns(T.nilable(Onlyfans::Internal::FileInput)) }
      attr_reader :file

      sig { params(file: Onlyfans::Internal::FileInput).void }
      attr_writer :file

      # A URL to download the file from. Required if `file` is not provided. Maximum
      # file size depends on the subscription configuration.
      sig { returns(T.nilable(String)) }
      attr_reader :file_url

      sig { params(file_url: String).void }
      attr_writer :file_url

      # Set to `avatar` if this file will be used as a profile picture, `header` for a
      # profile banner, or keep empty if this file will be for anything else.
      sig { returns(T.nilable(Onlyfans::MediaUploadParams::Type::OrSymbol)) }
      attr_reader :type

      sig { params(type: Onlyfans::MediaUploadParams::Type::OrSymbol).void }
      attr_writer :type

      sig do
        params(
          account: String,
          async: T::Boolean,
          file: Onlyfans::Internal::FileInput,
          file_url: String,
          type: Onlyfans::MediaUploadParams::Type::OrSymbol,
          request_options: Onlyfans::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        account:,
        # Set to `true` to process uploads in the background. Returns a `polling_url` to
        # check status. Recommended for large files. Instead of polling, you can subscribe
        # to the `media_uploads.completed` and `media_uploads.failed` webhook events —
        # they only fire for async uploads.
        async: nil,
        # The file to upload. Required if `file_url` is not provided. Maximum file size:
        # 100 MB (limited by Cloudflare).
        file: nil,
        # A URL to download the file from. Required if `file` is not provided. Maximum
        # file size depends on the subscription configuration.
        file_url: nil,
        # Set to `avatar` if this file will be used as a profile picture, `header` for a
        # profile banner, or keep empty if this file will be for anything else.
        type: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            account: String,
            async: T::Boolean,
            file: Onlyfans::Internal::FileInput,
            file_url: String,
            type: Onlyfans::MediaUploadParams::Type::OrSymbol,
            request_options: Onlyfans::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Set to `avatar` if this file will be used as a profile picture, `header` for a
      # profile banner, or keep empty if this file will be for anything else.
      module Type
        extend Onlyfans::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Onlyfans::MediaUploadParams::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        DEFAULT =
          T.let(:default, Onlyfans::MediaUploadParams::Type::TaggedSymbol)
        AVATAR = T.let(:avatar, Onlyfans::MediaUploadParams::Type::TaggedSymbol)
        HEADER = T.let(:header, Onlyfans::MediaUploadParams::Type::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Onlyfans::MediaUploadParams::Type::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
