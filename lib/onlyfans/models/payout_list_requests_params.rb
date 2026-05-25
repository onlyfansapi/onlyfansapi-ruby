# frozen_string_literal: true

module Onlyfans
  module Models
    # @see Onlyfans::Resources::Payouts#list_requests
    class PayoutListRequestsParams < Onlyfans::Internal::Type::BaseModel
      extend Onlyfans::Internal::Type::RequestParameters::Converter
      include Onlyfans::Internal::Type::RequestParameters

      # @!attribute account
      #
      #   @return [String]
      required :account, String

      # @!attribute limit
      #   Number of payout requests to return
      #
      #   @return [String, nil]
      optional :limit, String

      # @!attribute offset
      #   Number of payout requests to skip for pagination
      #
      #   @return [String, nil]
      optional :offset, String

      # @!method initialize(account:, limit: nil, offset: nil, request_options: {})
      #   @param account [String]
      #
      #   @param limit [String] Number of payout requests to return
      #
      #   @param offset [String] Number of payout requests to skip for pagination
      #
      #   @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
