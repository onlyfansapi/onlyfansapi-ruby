# frozen_string_literal: true

module Onlyfansapi
  module Models
    # @see Onlyfansapi::Resources::Subscribers#retrieve_statistics
    class SubscriberRetrieveStatisticsParams < Onlyfansapi::Internal::Type::BaseModel
      extend Onlyfansapi::Internal::Type::RequestParameters::Converter
      include Onlyfansapi::Internal::Type::RequestParameters

      # @!attribute account
      #
      #   @return [String]
      required :account, String

      # @!attribute end_date
      #   The end date for the period. Keep empty to calculate everything.
      #
      #   @return [String, nil]
      optional :end_date, String, nil?: true

      # @!attribute start_date
      #   The start date for the period. Keep empty to calculate everything.
      #
      #   @return [String, nil]
      optional :start_date, String, nil?: true

      # @!attribute type
      #   Filter the subscriber statistics (default = total)
      #
      #   @return [Symbol, Onlyfansapi::Models::SubscriberRetrieveStatisticsParams::Type, nil]
      optional :type, enum: -> { Onlyfansapi::SubscriberRetrieveStatisticsParams::Type }, nil?: true

      # @!method initialize(account:, end_date: nil, start_date: nil, type: nil, request_options: {})
      #   @param account [String]
      #
      #   @param end_date [String, nil] The end date for the period. Keep empty to calculate everything.
      #
      #   @param start_date [String, nil] The start date for the period. Keep empty to calculate everything.
      #
      #   @param type [Symbol, Onlyfansapi::Models::SubscriberRetrieveStatisticsParams::Type, nil] Filter the subscriber statistics (default = total)
      #
      #   @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}]

      # Filter the subscriber statistics (default = total)
      module Type
        extend Onlyfansapi::Internal::Type::Enum

        TOTAL = :total
        RENEW = :renew
        NEW = :new

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
