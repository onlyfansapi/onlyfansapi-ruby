# frozen_string_literal: true

module Onlyfansapi
  module Models
    # @see Onlyfansapi::Resources::Media#upload
    class MediaUploadResponse < Onlyfansapi::Internal::Type::BaseModel
      # @!attribute additional
      #
      #   @return [Onlyfansapi::Models::MediaUploadResponse::Additional, nil]
      optional :additional, -> { Onlyfansapi::Models::MediaUploadResponse::Additional }

      # @!attribute extra
      #
      #   @return [String, nil]
      optional :extra, String

      # @!attribute file_name
      #
      #   @return [String, nil]
      optional :file_name, String

      # @!attribute host
      #
      #   @return [String, nil]
      optional :host, String

      # @!attribute note
      #
      #   @return [String, nil]
      optional :note, String

      # @!attribute prefixed_id
      #
      #   @return [String, nil]
      optional :prefixed_id, String

      # @!attribute process_id
      #
      #   @return [String, nil]
      optional :process_id, String, api_name: :processId

      # @!attribute source_url
      #
      #   @return [String, nil]
      optional :source_url, String, api_name: :sourceUrl

      # @!attribute thumbs
      #
      #   @return [Array<Onlyfansapi::Models::MediaUploadResponse::Thumb>, nil]
      optional :thumbs,
               -> { Onlyfansapi::Internal::Type::ArrayOf[Onlyfansapi::Models::MediaUploadResponse::Thumb] }

      # @!method initialize(additional: nil, extra: nil, file_name: nil, host: nil, note: nil, prefixed_id: nil, process_id: nil, source_url: nil, thumbs: nil)
      #   @param additional [Onlyfansapi::Models::MediaUploadResponse::Additional]
      #   @param extra [String]
      #   @param file_name [String]
      #   @param host [String]
      #   @param note [String]
      #   @param prefixed_id [String]
      #   @param process_id [String]
      #   @param source_url [String]
      #   @param thumbs [Array<Onlyfansapi::Models::MediaUploadResponse::Thumb>]

      # @see Onlyfansapi::Models::MediaUploadResponse#additional
      class Additional < Onlyfansapi::Internal::Type::BaseModel
        # @!attribute user
        #
        #   @return [String, nil]
        optional :user, String

        # @!method initialize(user: nil)
        #   @param user [String]
      end

      class Thumb < Onlyfansapi::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [Integer, nil]
        optional :id, Integer

        # @!attribute url
        #
        #   @return [String, nil]
        optional :url, String

        # @!method initialize(id: nil, url: nil)
        #   @param id [Integer]
        #   @param url [String]
      end
    end
  end
end
