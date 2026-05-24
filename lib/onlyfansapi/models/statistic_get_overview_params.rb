# frozen_string_literal: true

module Onlyfansapi
  module Models
    # @see Onlyfansapi::Resources::Statistics#get_overview
    class StatisticGetOverviewParams < Onlyfansapi::Internal::Type::BaseModel
      extend Onlyfansapi::Internal::Type::RequestParameters::Converter
      include Onlyfansapi::Internal::Type::RequestParameters

      # @!attribute account
      #
      #   @return [String]
      required :account, String

      # @!attribute end_date
      #   The end date for the statistics.
      #
      #   @return [String]
      required :end_date, String

      # @!attribute start_date
      #   The start date for the statistics.
      #
      #   @return [String]
      required :start_date, String

      # @!attribute type
      #   The type of statistics to retrieve (default = empty)
      #
      #   @return [Symbol, Onlyfansapi::Models::StatisticGetOverviewParams::Type, nil]
      optional :type, enum: -> { Onlyfansapi::StatisticGetOverviewParams::Type }, nil?: true

      # @!method initialize(account:, end_date:, start_date:, type: nil, request_options: {})
      #   @param account [String]
      #
      #   @param end_date [String] The end date for the statistics.
      #
      #   @param start_date [String] The start date for the statistics.
      #
      #   @param type [Symbol, Onlyfansapi::Models::StatisticGetOverviewParams::Type, nil] The type of statistics to retrieve (default = empty)
      #
      #   @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}]

      # The type of statistics to retrieve (default = empty)
      module Type
        extend Onlyfansapi::Internal::Type::Enum

        FANS = :fans
        VISITORS = :visitors
        POSTS = :posts

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
