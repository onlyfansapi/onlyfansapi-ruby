# frozen_string_literal: true

module Onlyfansapi
  module Models
    module Media
      # @see Onlyfansapi::Resources::Media::Vault#upload
      class VaultUploadParams < Onlyfansapi::Internal::Type::BaseModel
        extend Onlyfansapi::Internal::Type::RequestParameters::Converter
        include Onlyfansapi::Internal::Type::RequestParameters

        # @!attribute account
        #
        #   @return [String]
        required :account, String

        # @!attribute async
        #   Set to `true` to process uploads in the background. Returns a `polling_url` to
        #   check status. Recommended for large files.
        #
        #   @return [Boolean, nil]
        optional :async, Onlyfansapi::Internal::Type::Boolean

        # @!attribute file
        #   The file to upload. Required if `file_url` is not provided. Maximum file size:
        #   100 MB (limited by Cloudflare).
        #
        #   @return [Pathname, StringIO, IO, String, Onlyfansapi::FilePart, nil]
        optional :file, Onlyfansapi::Internal::Type::FileInput

        # @!attribute file_url
        #   A URL to download the file from. Required if `file` is not provided. Maximum
        #   file size depends on the subscription configuration.
        #
        #   @return [String, nil]
        optional :file_url, String

        # @!method initialize(account:, async: nil, file: nil, file_url: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Onlyfansapi::Models::Media::VaultUploadParams} for more details.
        #
        #   @param account [String]
        #
        #   @param async [Boolean] Set to `true` to process uploads in the background. Returns a `polling_url` to c
        #
        #   @param file [Pathname, StringIO, IO, String, Onlyfansapi::FilePart] The file to upload. Required if `file_url` is not provided. Maximum file size: 1
        #
        #   @param file_url [String] A URL to download the file from. Required if `file` is not provided. Maximum fil
        #
        #   @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
