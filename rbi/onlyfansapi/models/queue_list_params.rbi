# typed: strong

module Onlyfansapi
  module Models
    class QueueListParams < Onlyfansapi::Internal::Type::BaseModel
      extend Onlyfansapi::Internal::Type::RequestParameters::Converter
      include Onlyfansapi::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Onlyfansapi::QueueListParams, Onlyfansapi::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :account

      # Maximum number of queue items to return (default = 20)
      sig { returns(Integer) }
      attr_accessor :limit

      # Latest publish date to return
      sig { returns(String) }
      attr_accessor :publish_date_end

      # Earliest publish date to return (must be at least today)
      sig { returns(String) }
      attr_accessor :publish_date_start

      # Time timezone of the provided dates.
      # [View available timezone values](https://www.php.net/manual/en/timezones.php)
      sig { returns(String) }
      attr_accessor :timezone

      sig do
        params(
          account: String,
          limit: Integer,
          publish_date_end: String,
          publish_date_start: String,
          timezone: String,
          request_options: Onlyfansapi::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        account:,
        # Maximum number of queue items to return (default = 20)
        limit:,
        # Latest publish date to return
        publish_date_end:,
        # Earliest publish date to return (must be at least today)
        publish_date_start:,
        # Time timezone of the provided dates.
        # [View available timezone values](https://www.php.net/manual/en/timezones.php)
        timezone:,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            account: String,
            limit: Integer,
            publish_date_end: String,
            publish_date_start: String,
            timezone: String,
            request_options: Onlyfansapi::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
