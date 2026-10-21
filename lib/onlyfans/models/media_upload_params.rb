# frozen_string_literal: true

module Onlyfans
  module Models
    # @see Onlyfans::Resources::Media#upload
    class MediaUploadParams < Onlyfans::Internal::Type::BaseModel
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

      # @!attribute type
      #   Set to `avatar` if this file will be used as a profile picture, `header` for a
      #   profile banner, or keep empty if this file will be for anything else.
      #
      #   @return [Symbol, Onlyfans::Models::MediaUploadParams::Type, nil]
      optional :type, enum: -> { Onlyfans::MediaUploadParams::Type }

      # @!method initialize(account:, async: nil, file: nil, file_url: nil, type: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Onlyfans::Models::MediaUploadParams} for more details.
      #
      #   @param account [String]
      #
      #   @param async [Boolean] Set to `true` to process uploads in the background. Returns a `polling_url` to c
      #
      #   @param file [Pathname, StringIO, IO, String, Onlyfans::FilePart] The file to upload. Required if `file_url` is not provided. Maximum file size: 1
      #
      #   @param file_url [String] A URL to download the file from. Required if `file` is not provided. Maximum fil
      #
      #   @param type [Symbol, Onlyfans::Models::MediaUploadParams::Type] Set to `avatar` if this file will be used as a profile picture, `header` for a p
      #
      #   @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}]

      # Set to `avatar` if this file will be used as a profile picture, `header` for a
      # profile banner, or keep empty if this file will be for anything else.
      module Type
        extend Onlyfans::Internal::Type::Enum

        DEFAULT = :default
        AVATAR = :avatar
        HEADER = :header

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
