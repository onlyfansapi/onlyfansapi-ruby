# frozen_string_literal: true

module Onlyfans
  module Models
    module Statistics
      # @see Onlyfans::Resources::Statistics::Statements#get_earnings
      class StatementGetEarningsParams < Onlyfans::Internal::Type::BaseModel
        extend Onlyfans::Internal::Type::RequestParameters::Converter
        include Onlyfans::Internal::Type::RequestParameters

        # @!attribute account
        #
        #   @return [String]
        required :account, String

        # @!attribute start_date
        #   The start date for the period
        #
        #   @return [String]
        required :start_date, String

        # @!attribute end_date
        #   The end date for the period.
        #
        #   @return [String, nil]
        optional :end_date, String

        # @!attribute type
        #   Filter by All / Subscriptions / Tips / Posts / Messages / Streams
        #
        #   @return [Symbol, Onlyfans::Models::Statistics::StatementGetEarningsParams::Type, nil]
        optional :type, enum: -> { Onlyfans::Statistics::StatementGetEarningsParams::Type }

        # @!method initialize(account:, start_date:, end_date: nil, type: nil, request_options: {})
        #   @param account [String]
        #
        #   @param start_date [String] The start date for the period
        #
        #   @param end_date [String] The end date for the period.
        #
        #   @param type [Symbol, Onlyfans::Models::Statistics::StatementGetEarningsParams::Type] Filter by All / Subscriptions / Tips / Posts / Messages / Streams
        #
        #   @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}]

        # Filter by All / Subscriptions / Tips / Posts / Messages / Streams
        module Type
          extend Onlyfans::Internal::Type::Enum

          TOTAL = :total
          SUBSCRIBES = :subscribes
          TIPS = :tips
          POST = :post
          MESSAGES = :messages
          STREAM = :stream

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
