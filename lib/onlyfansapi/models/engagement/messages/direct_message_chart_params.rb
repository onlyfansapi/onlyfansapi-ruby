# frozen_string_literal: true

module Onlyfansapi
  module Models
    module Engagement
      module Messages
        # @see Onlyfansapi::Resources::Engagement::Messages::DirectMessages#chart
        class DirectMessageChartParams < Onlyfansapi::Internal::Type::BaseModel
          extend Onlyfansapi::Internal::Type::RequestParameters::Converter
          include Onlyfansapi::Internal::Type::RequestParameters

          # @!attribute account
          #
          #   @return [String]
          required :account, String

          # @!attribute end_date
          #   End of the chart window in `Y-m-d H:i:s` format. Must be after `startDate`.
          #
          #   @return [String, nil]
          optional :end_date, String

          # @!attribute start_date
          #   Start of the chart window in `Y-m-d H:i:s` format.
          #
          #   @return [String, nil]
          optional :start_date, String

          # @!attribute with_total
          #   Include `total` and `delta` aggregates in the response. Defaults to `true`.
          #
          #   @return [Boolean, nil]
          optional :with_total, Onlyfansapi::Internal::Type::Boolean

          # @!method initialize(account:, end_date: nil, start_date: nil, with_total: nil, request_options: {})
          #   @param account [String]
          #
          #   @param end_date [String] End of the chart window in `Y-m-d H:i:s` format. Must be after `startDate`.
          #
          #   @param start_date [String] Start of the chart window in `Y-m-d H:i:s` format.
          #
          #   @param with_total [Boolean] Include `total` and `delta` aggregates in the response. Defaults to `true`.
          #
          #   @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
