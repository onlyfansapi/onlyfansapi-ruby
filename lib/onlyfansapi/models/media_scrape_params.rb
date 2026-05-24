# frozen_string_literal: true

module Onlyfansapi
  module Models
    # @see Onlyfansapi::Resources::Media#scrape
    class MediaScrapeParams < Onlyfansapi::Internal::Type::BaseModel
      extend Onlyfansapi::Internal::Type::RequestParameters::Converter
      include Onlyfansapi::Internal::Type::RequestParameters

      # @!attribute account
      #
      #   @return [String]
      required :account, String

      # @!attribute expiration_date
      #   The expiration date of our returned `temporary_url`. Default of 5 minutes. Must
      #   be null if `public` is true.
      #
      #   @return [String, nil]
      optional :expiration_date, String, nil?: true

      # @!attribute file_type
      #   The file type to scrape. Only allowed when using `media_id`.
      #
      #   @return [Symbol, Onlyfansapi::Models::MediaScrapeParams::FileType, nil]
      optional :file_type, enum: -> { Onlyfansapi::MediaScrapeParams::FileType }, nil?: true

      # @!attribute media_id
      #   The OnlyFans Vault Media ID. **Can be used instead of the `url`.**
      #
      #   @return [Integer, nil]
      optional :media_id, Integer, nil?: true

      # @!attribute public
      #   Set to true if you want to have the file uploaded to our public CDN (no signed
      #   URL needed to access). Default is false. Must be null if `expiration_date` is
      #   set.
      #
      #   @return [Boolean, nil]
      optional :public, Onlyfansapi::Internal::Type::Boolean, nil?: true

      # @!attribute url
      #   The CDN URL to scrape. **Keep in mind that these URLs expire fast.**
      #
      #   @return [String, nil]
      optional :url, String, nil?: true

      # @!method initialize(account:, expiration_date: nil, file_type: nil, media_id: nil, public: nil, url: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Onlyfansapi::Models::MediaScrapeParams} for more details.
      #
      #   @param account [String]
      #
      #   @param expiration_date [String, nil] The expiration date of our returned `temporary_url`. Default of 5 minutes. Must
      #
      #   @param file_type [Symbol, Onlyfansapi::Models::MediaScrapeParams::FileType, nil] The file type to scrape. Only allowed when using `media_id`.
      #
      #   @param media_id [Integer, nil] The OnlyFans Vault Media ID. **Can be used instead of the `url`.**
      #
      #   @param public [Boolean, nil] Set to true if you want to have the file uploaded to our public CDN (no signed U
      #
      #   @param url [String, nil] The CDN URL to scrape. **Keep in mind that these URLs expire fast.**
      #
      #   @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}]

      # The file type to scrape. Only allowed when using `media_id`.
      module FileType
        extend Onlyfansapi::Internal::Type::Enum

        FULL = :full
        THUMB = :thumb
        PREVIEW = :preview
        SQUARE_PREVIEW = :squarePreview

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
