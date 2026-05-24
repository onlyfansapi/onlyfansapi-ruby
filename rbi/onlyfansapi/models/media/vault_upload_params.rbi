# typed: strong

module Onlyfansapi
  module Models
    module Media
      class VaultUploadParams < Onlyfansapi::Internal::Type::BaseModel
        extend Onlyfansapi::Internal::Type::RequestParameters::Converter
        include Onlyfansapi::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Onlyfansapi::Media::VaultUploadParams,
              Onlyfansapi::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :account

        # Set to `true` to process uploads in the background. Returns a `polling_url` to
        # check status. Recommended for large files.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :async

        sig { params(async: T::Boolean).void }
        attr_writer :async

        # The file to upload. Required if `file_url` is not provided. Maximum file size:
        # 100 MB (limited by Cloudflare).
        sig { returns(T.nilable(Onlyfansapi::Internal::FileInput)) }
        attr_reader :file

        sig { params(file: Onlyfansapi::Internal::FileInput).void }
        attr_writer :file

        # A URL to download the file from. Required if `file` is not provided. Maximum
        # file size depends on the subscription configuration.
        sig { returns(T.nilable(String)) }
        attr_reader :file_url

        sig { params(file_url: String).void }
        attr_writer :file_url

        sig do
          params(
            account: String,
            async: T::Boolean,
            file: Onlyfansapi::Internal::FileInput,
            file_url: String,
            request_options: Onlyfansapi::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          account:,
          # Set to `true` to process uploads in the background. Returns a `polling_url` to
          # check status. Recommended for large files.
          async: nil,
          # The file to upload. Required if `file_url` is not provided. Maximum file size:
          # 100 MB (limited by Cloudflare).
          file: nil,
          # A URL to download the file from. Required if `file` is not provided. Maximum
          # file size depends on the subscription configuration.
          file_url: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              account: String,
              async: T::Boolean,
              file: Onlyfansapi::Internal::FileInput,
              file_url: String,
              request_options: Onlyfansapi::RequestOptions
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
