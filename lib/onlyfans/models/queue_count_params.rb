# frozen_string_literal: true

module Onlyfans
  module Models
    # @see Onlyfans::Resources::Queue#count
    class QueueCountParams < Onlyfans::Internal::Type::BaseModel
      extend Onlyfans::Internal::Type::RequestParameters::Converter
      include Onlyfans::Internal::Type::RequestParameters

      # @!attribute account
      #
      #   @return [String]
      required :account, String

      # @!attribute publish_date_end
      #   Latest publish date to count to
      #
      #   @return [String]
      required :publish_date_end, String

      # @!attribute publish_date_start
      #   Earliest publish date to count from (must be at least today)
      #
      #   @return [String]
      required :publish_date_start, String

      # @!attribute timezone
      #   Time timezone of the provided dates.
      #   [View available timezone values](https://www.php.net/manual/en/timezones.php)
      #
      #   @return [String]
      required :timezone, String

      # @!method initialize(account:, publish_date_end:, publish_date_start:, timezone:, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Onlyfans::Models::QueueCountParams} for more details.
      #
      #   @param account [String]
      #
      #   @param publish_date_end [String] Latest publish date to count to
      #
      #   @param publish_date_start [String] Earliest publish date to count from (must be at least today)
      #
      #   @param timezone [String] Time timezone of the provided dates. [View available timezone values](https://ww
      #
      #   @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
