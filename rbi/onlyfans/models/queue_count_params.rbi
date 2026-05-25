# typed: strong

module Onlyfans
  module Models
    class QueueCountParams < Onlyfans::Internal::Type::BaseModel
      extend Onlyfans::Internal::Type::RequestParameters::Converter
      include Onlyfans::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Onlyfans::QueueCountParams, Onlyfans::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :account

      # Latest publish date to count to
      sig { returns(String) }
      attr_accessor :publish_date_end

      # Earliest publish date to count from (must be at least today)
      sig { returns(String) }
      attr_accessor :publish_date_start

      # Time timezone of the provided dates.
      # [View available timezone values](https://www.php.net/manual/en/timezones.php)
      sig { returns(String) }
      attr_accessor :timezone

      sig do
        params(
          account: String,
          publish_date_end: String,
          publish_date_start: String,
          timezone: String,
          request_options: Onlyfans::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        account:,
        # Latest publish date to count to
        publish_date_end:,
        # Earliest publish date to count from (must be at least today)
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
            publish_date_end: String,
            publish_date_start: String,
            timezone: String,
            request_options: Onlyfans::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
