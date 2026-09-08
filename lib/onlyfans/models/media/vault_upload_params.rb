# frozen_string_literal: true

module Onlyfans
  module Models
    module Media
      # @see Onlyfans::Resources::Media::Vault#upload
      class VaultUploadParams < Onlyfans::Internal::Type::BaseModel
        extend Onlyfans::Internal::Type::RequestParameters::Converter
        include Onlyfans::Internal::Type::RequestParameters

        # @!attribute account
        #
        #   @return [String]
        required :account, String

        # @!attribute async
        #   Set to `true` to process uploads in the background. Returns a `polling_url` to
        #   check status. Recommended for large files. Instead of polling, you can subscribe
        #   to the `media_uploads.completed` and `media_uploads.failed` webhook events —
        #   they only fire for async uploads.
        #
        #   @return [Boolean, nil]
        optional :async, Onlyfans::Internal::Type::Boolean

        # @!attribute file
        #   The file to upload. Required if `file_url` is not provided. Maximum file size:
        #   100 MB (limited by Cloudflare).
        #
        #   @return [Pathname, StringIO, IO, String, Onlyfans::FilePart, nil]
        optional :file, Onlyfans::Internal::Type::FileInput

        # @!attribute file_url
        #   A URL to download the file from. Required if `file` is not provided. Maximum
        #   file size depends on the subscription configuration.
        #
        #   @return [String, nil]
        optional :file_url, String

        # @!method initialize(account:, async: nil, file: nil, file_url: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Onlyfans::Models::Media::VaultUploadParams} for more details.
        #
        #   @param account [String]
        #
        #   @param async [Boolean] Set to `true` to process uploads in the background. Returns a `polling_url` to c
        #
        #   @param file [Pathname, StringIO, IO, String, Onlyfans::FilePart] The file to upload. Required if `file_url` is not provided. Maximum file size: 1
        #
        #   @param file_url [String] A URL to download the file from. Required if `file` is not provided. Maximum fil
        #
        #   @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
