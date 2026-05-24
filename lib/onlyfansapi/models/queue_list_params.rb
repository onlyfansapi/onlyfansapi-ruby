# frozen_string_literal: true

module Onlyfansapi
  module Models
    # @see Onlyfansapi::Resources::Queue#list
    class QueueListParams < Onlyfansapi::Internal::Type::BaseModel
      extend Onlyfansapi::Internal::Type::RequestParameters::Converter
      include Onlyfansapi::Internal::Type::RequestParameters

      # @!attribute account
      #
      #   @return [String]
      required :account, String

      # @!attribute limit
      #   Maximum number of queue items to return (default = 20)
      #
      #   @return [Integer]
      required :limit, Integer

      # @!attribute publish_date_end
      #   Latest publish date to return
      #
      #   @return [String]
      required :publish_date_end, String

      # @!attribute publish_date_start
      #   Earliest publish date to return (must be at least today)
      #
      #   @return [String]
      required :publish_date_start, String

      # @!attribute timezone
      #   Time timezone of the provided dates.
      #   [View available timezone values](https://www.php.net/manual/en/timezones.php)
      #
      #   @return [String]
      required :timezone, String

      # @!method initialize(account:, limit:, publish_date_end:, publish_date_start:, timezone:, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Onlyfansapi::Models::QueueListParams} for more details.
      #
      #   @param account [String]
      #
      #   @param limit [Integer] Maximum number of queue items to return (default = 20)
      #
      #   @param publish_date_end [String] Latest publish date to return
      #
      #   @param publish_date_start [String] Earliest publish date to return (must be at least today)
      #
      #   @param timezone [String] Time timezone of the provided dates. [View available timezone values](https://ww
      #
      #   @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
