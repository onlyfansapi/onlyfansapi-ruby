# frozen_string_literal: true

module Onlyfans
  module Models
    # @see Onlyfans::Resources::Chargebacks#list
    class ChargebackListParams < Onlyfans::Internal::Type::BaseModel
      extend Onlyfans::Internal::Type::RequestParameters::Converter
      include Onlyfans::Internal::Type::RequestParameters

      # @!attribute account
      #
      #   @return [String]
      required :account, String

      # @!attribute end_date
      #   The end date for the chargebacks. Keep empty to get all.
      #
      #   @return [String, nil]
      optional :end_date, String

      # @!attribute limit
      #   Number of chargebacks to return (1-100). Default = 10
      #
      #   @return [String, nil]
      optional :limit, String, nil?: true

      # @!attribute offset
      #   Number of chargebacks to skip, used for pagination.
      #
      #   @return [String, nil]
      optional :offset, String, nil?: true

      # @!attribute start_date
      #   The start date for the chargebacks. Keep empty to get all.
      #
      #   @return [String, nil]
      optional :start_date, String

      # @!method initialize(account:, end_date: nil, limit: nil, offset: nil, start_date: nil, request_options: {})
      #   @param account [String]
      #
      #   @param end_date [String] The end date for the chargebacks. Keep empty to get all.
      #
      #   @param limit [String, nil] Number of chargebacks to return (1-100). Default = 10
      #
      #   @param offset [String, nil] Number of chargebacks to skip, used for pagination.
      #
      #   @param start_date [String] The start date for the chargebacks. Keep empty to get all.
      #
      #   @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
