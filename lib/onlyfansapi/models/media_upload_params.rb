# frozen_string_literal: true

module Onlyfansapi
  module Models
    # @see Onlyfansapi::Resources::Media#upload
    class MediaUploadParams < Onlyfansapi::Internal::Type::BaseModel
      extend Onlyfansapi::Internal::Type::RequestParameters::Converter
      include Onlyfansapi::Internal::Type::RequestParameters

      # @!attribute account
      #
      #   @return [String]
      required :account, String

      # @!attribute file
      #   The file to upload.
      #
      #   @return [String]
      required :file, String

      # @!attribute type
      #   Set to `avatar` if this file will be used as a profile picture, `header` for a
      #   profile banner, or keep empty if this file will be for anything else.
      #
      #   @return [Symbol, Onlyfansapi::Models::MediaUploadParams::Type, nil]
      optional :type, enum: -> { Onlyfansapi::MediaUploadParams::Type }

      # @!method initialize(account:, file:, type: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Onlyfansapi::Models::MediaUploadParams} for more details.
      #
      #   @param account [String]
      #
      #   @param file [String] The file to upload.
      #
      #   @param type [Symbol, Onlyfansapi::Models::MediaUploadParams::Type] Set to `avatar` if this file will be used as a profile picture, `header` for a p
      #
      #   @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}]

      # Set to `avatar` if this file will be used as a profile picture, `header` for a
      # profile banner, or keep empty if this file will be for anything else.
      module Type
        extend Onlyfansapi::Internal::Type::Enum

        DEFAULT = :default
        AVATAR = :avatar
        HEADER = :header

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
