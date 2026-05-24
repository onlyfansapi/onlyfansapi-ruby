# typed: strong

module Onlyfansapi
  module Models
    class MediaUploadParams < Onlyfansapi::Internal::Type::BaseModel
      extend Onlyfansapi::Internal::Type::RequestParameters::Converter
      include Onlyfansapi::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Onlyfansapi::MediaUploadParams, Onlyfansapi::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :account

      # The file to upload.
      sig { returns(String) }
      attr_accessor :file

      # Set to `avatar` if this file will be used as a profile picture, `header` for a
      # profile banner, or keep empty if this file will be for anything else.
      sig { returns(T.nilable(Onlyfansapi::MediaUploadParams::Type::OrSymbol)) }
      attr_reader :type

      sig { params(type: Onlyfansapi::MediaUploadParams::Type::OrSymbol).void }
      attr_writer :type

      sig do
        params(
          account: String,
          file: String,
          type: Onlyfansapi::MediaUploadParams::Type::OrSymbol,
          request_options: Onlyfansapi::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        account:,
        # The file to upload.
        file:,
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
            file: String,
            type: Onlyfansapi::MediaUploadParams::Type::OrSymbol,
            request_options: Onlyfansapi::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Set to `avatar` if this file will be used as a profile picture, `header` for a
      # profile banner, or keep empty if this file will be for anything else.
      module Type
        extend Onlyfansapi::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Onlyfansapi::MediaUploadParams::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        DEFAULT =
          T.let(:default, Onlyfansapi::MediaUploadParams::Type::TaggedSymbol)
        AVATAR =
          T.let(:avatar, Onlyfansapi::MediaUploadParams::Type::TaggedSymbol)
        HEADER =
          T.let(:header, Onlyfansapi::MediaUploadParams::Type::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Onlyfansapi::MediaUploadParams::Type::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
