# frozen_string_literal: true

module Onlyfansapi
  module Models
    module Statistics
      # @see Onlyfansapi::Resources::Statistics::Reach#get_profile_visitors
      class ReachGetProfileVisitorsParams < Onlyfansapi::Internal::Type::BaseModel
        extend Onlyfansapi::Internal::Type::RequestParameters::Converter
        include Onlyfansapi::Internal::Type::RequestParameters

        # @!attribute account
        #
        #   @return [String]
        required :account, String

        # @!attribute end_date
        #   The end date for the period.
        #
        #   @return [String]
        required :end_date, String

        # @!attribute start_date
        #   The start date for the period
        #
        #   @return [String]
        required :start_date, String

        # @!attribute filter
        #   Optionally, filter the results by `chart` or `topCountries`. See example
        #   responses.
        #
        #   @return [Symbol, Onlyfansapi::Models::Statistics::ReachGetProfileVisitorsParams::Filter, nil]
        optional :filter,
                 enum: -> {
                   Onlyfansapi::Statistics::ReachGetProfileVisitorsParams::Filter
                 },
                 nil?: true

        # @!attribute limit
        #   Number of results to return
        #
        #   @return [Integer, nil]
        optional :limit, Integer, nil?: true

        # @!attribute type
        #   Filter all / users / guests
        #
        #   @return [Symbol, Onlyfansapi::Models::Statistics::ReachGetProfileVisitorsParams::Type, nil]
        optional :type, enum: -> { Onlyfansapi::Statistics::ReachGetProfileVisitorsParams::Type }, nil?: true

        # @!method initialize(account:, end_date:, start_date:, filter: nil, limit: nil, type: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Onlyfansapi::Models::Statistics::ReachGetProfileVisitorsParams} for more
        #   details.
        #
        #   @param account [String]
        #
        #   @param end_date [String] The end date for the period.
        #
        #   @param start_date [String] The start date for the period
        #
        #   @param filter [Symbol, Onlyfansapi::Models::Statistics::ReachGetProfileVisitorsParams::Filter, nil] Optionally, filter the results by `chart` or `topCountries`. See example respons
        #
        #   @param limit [Integer, nil] Number of results to return
        #
        #   @param type [Symbol, Onlyfansapi::Models::Statistics::ReachGetProfileVisitorsParams::Type, nil] Filter all / users / guests
        #
        #   @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}]

        # Optionally, filter the results by `chart` or `topCountries`. See example
        # responses.
        module Filter
          extend Onlyfansapi::Internal::Type::Enum

          CHART = :chart
          TOP_COUNTRIES = :topCountries

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # Filter all / users / guests
        module Type
          extend Onlyfansapi::Internal::Type::Enum

          TOTAL = :total
          USERS = :users
          GUESTS = :guests

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
