# frozen_string_literal: true

module Onlyfans
  module Models
    # @see Onlyfans::Resources::Statistics#get_overview
    class StatisticGetOverviewParams < Onlyfans::Internal::Type::BaseModel
      extend Onlyfans::Internal::Type::RequestParameters::Converter
      include Onlyfans::Internal::Type::RequestParameters

      # @!attribute account
      #
      #   @return [String]
      required :account, String

      # @!attribute end_date
      #   The end date for the statistics. Keep empty to retrieve until now.
      #
      #   @return [String, nil]
      optional :end_date, String

      # @!attribute start_date
      #   The start date for the statistics. Keep empty to retrieve from the model's start
      #   date.
      #
      #   @return [String, nil]
      optional :start_date, String

      # @!attribute type
      #   The type of statistics to retrieve (default = empty)
      #
      #   @return [Symbol, Onlyfans::Models::StatisticGetOverviewParams::Type, nil]
      optional :type, enum: -> { Onlyfans::StatisticGetOverviewParams::Type }, nil?: true

      # @!method initialize(account:, end_date: nil, start_date: nil, type: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Onlyfans::Models::StatisticGetOverviewParams} for more details.
      #
      #   @param account [String]
      #
      #   @param end_date [String] The end date for the statistics. Keep empty to retrieve until now.
      #
      #   @param start_date [String] The start date for the statistics. Keep empty to retrieve from the model's start
      #
      #   @param type [Symbol, Onlyfans::Models::StatisticGetOverviewParams::Type, nil] The type of statistics to retrieve (default = empty)
      #
      #   @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}]

      # The type of statistics to retrieve (default = empty)
      module Type
        extend Onlyfans::Internal::Type::Enum

        FANS = :fans
        VISITORS = :visitors
        POSTS = :posts
        MESSAGES = :messages

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
