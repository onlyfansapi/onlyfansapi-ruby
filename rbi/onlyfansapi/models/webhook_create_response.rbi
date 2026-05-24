# typed: strong

module Onlyfansapi
  module Models
    class WebhookCreateResponse < Onlyfansapi::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Onlyfansapi::Models::WebhookCreateResponse,
            Onlyfansapi::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(String)) }
      attr_reader :id

      sig { params(id: String).void }
      attr_writer :id

      sig { returns(T.nilable(String)) }
      attr_reader :created_at

      sig { params(created_at: String).void }
      attr_writer :created_at

      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :events

      sig { params(events: T::Array[String]).void }
      attr_writer :events

      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :has_signing_secret

      sig { params(has_signing_secret: T::Boolean).void }
      attr_writer :has_signing_secret

      sig { returns(T.nilable(String)) }
      attr_reader :url

      sig { params(url: String).void }
      attr_writer :url

      sig do
        params(
          id: String,
          created_at: String,
          events: T::Array[String],
          has_signing_secret: T::Boolean,
          url: String
        ).returns(T.attached_class)
      end
      def self.new(
        id: nil,
        created_at: nil,
        events: nil,
        has_signing_secret: nil,
        url: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            created_at: String,
            events: T::Array[String],
            has_signing_secret: T::Boolean,
            url: String
          }
        )
      end
      def to_hash
      end
    end
  end
end
