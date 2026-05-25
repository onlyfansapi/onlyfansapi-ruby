# typed: strong

module Onlyfans
  module Models
    class MediaScrapeParams < Onlyfans::Internal::Type::BaseModel
      extend Onlyfans::Internal::Type::RequestParameters::Converter
      include Onlyfans::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Onlyfans::MediaScrapeParams, Onlyfans::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :account

      # The expiration date of our returned `temporary_url`. Default of 5 minutes. Must
      # be null if `public` is true.
      sig { returns(T.nilable(String)) }
      attr_accessor :expiration_date

      # The file type to scrape. Only allowed when using `media_id`.
      sig do
        returns(T.nilable(Onlyfans::MediaScrapeParams::FileType::OrSymbol))
      end
      attr_accessor :file_type

      # The OnlyFans Vault Media ID. **Can be used instead of the `url`.**
      sig { returns(T.nilable(Integer)) }
      attr_accessor :media_id

      # Set to true if you want to have the file uploaded to our public CDN (no signed
      # URL needed to access). Default is false. Must be null if `expiration_date` is
      # set.
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :public

      # The CDN URL to scrape. **Keep in mind that these URLs expire fast.**
      sig { returns(T.nilable(String)) }
      attr_accessor :url

      sig do
        params(
          account: String,
          expiration_date: T.nilable(String),
          file_type: T.nilable(Onlyfans::MediaScrapeParams::FileType::OrSymbol),
          media_id: T.nilable(Integer),
          public: T.nilable(T::Boolean),
          url: T.nilable(String),
          request_options: Onlyfans::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        account:,
        # The expiration date of our returned `temporary_url`. Default of 5 minutes. Must
        # be null if `public` is true.
        expiration_date: nil,
        # The file type to scrape. Only allowed when using `media_id`.
        file_type: nil,
        # The OnlyFans Vault Media ID. **Can be used instead of the `url`.**
        media_id: nil,
        # Set to true if you want to have the file uploaded to our public CDN (no signed
        # URL needed to access). Default is false. Must be null if `expiration_date` is
        # set.
        public: nil,
        # The CDN URL to scrape. **Keep in mind that these URLs expire fast.**
        url: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            account: String,
            expiration_date: T.nilable(String),
            file_type:
              T.nilable(Onlyfans::MediaScrapeParams::FileType::OrSymbol),
            media_id: T.nilable(Integer),
            public: T.nilable(T::Boolean),
            url: T.nilable(String),
            request_options: Onlyfans::RequestOptions
          }
        )
      end
      def to_hash
      end

      # The file type to scrape. Only allowed when using `media_id`.
      module FileType
        extend Onlyfans::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Onlyfans::MediaScrapeParams::FileType) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        FULL = T.let(:full, Onlyfans::MediaScrapeParams::FileType::TaggedSymbol)
        THUMB =
          T.let(:thumb, Onlyfans::MediaScrapeParams::FileType::TaggedSymbol)
        PREVIEW =
          T.let(:preview, Onlyfans::MediaScrapeParams::FileType::TaggedSymbol)
        SQUARE_PREVIEW =
          T.let(
            :squarePreview,
            Onlyfans::MediaScrapeParams::FileType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Onlyfans::MediaScrapeParams::FileType::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
