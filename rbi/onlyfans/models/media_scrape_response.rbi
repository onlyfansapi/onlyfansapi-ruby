# typed: strong

module Onlyfans
  module Models
    class MediaScrapeResponse < Onlyfans::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Onlyfans::Models::MediaScrapeResponse,
            Onlyfans::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(String)) }
      attr_reader :expiration_date

      sig { params(expiration_date: String).void }
      attr_writer :expiration_date

      sig { returns(T.nilable(String)) }
      attr_reader :temporary_url

      sig { params(temporary_url: String).void }
      attr_writer :temporary_url

      sig do
        params(expiration_date: String, temporary_url: String).returns(
          T.attached_class
        )
      end
      def self.new(expiration_date: nil, temporary_url: nil)
      end

      sig do
        override.returns({ expiration_date: String, temporary_url: String })
      end
      def to_hash
      end
    end
  end
end
