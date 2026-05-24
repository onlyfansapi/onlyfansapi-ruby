# frozen_string_literal: true

module Onlyfansapi
  module Models
    # @see Onlyfansapi::Resources::Payouts#list_payout_requests
    class PayoutListPayoutRequestsParams < Onlyfansapi::Internal::Type::BaseModel
      extend Onlyfansapi::Internal::Type::RequestParameters::Converter
      include Onlyfansapi::Internal::Type::RequestParameters

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
      #   @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
