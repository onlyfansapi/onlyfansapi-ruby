# frozen_string_literal: true

module Onlyfansapi
  module Models
    # @see Onlyfansapi::Resources::Payouts#list_transactions
    class PayoutListTransactionsParams < Onlyfansapi::Internal::Type::BaseModel
      extend Onlyfansapi::Internal::Type::RequestParameters::Converter
      include Onlyfansapi::Internal::Type::RequestParameters

      # @!attribute account
      #
      #   @return [String]
      required :account, String

      # @!attribute limit
      #   Number of transactions to return
      #
      #   @return [String, nil]
      optional :limit, String

      # @!attribute marker
      #   The marker used for pagination. Default: `null`
      #
      #   @return [String, nil]
      optional :marker, String

      # @!method initialize(account:, limit: nil, marker: nil, request_options: {})
      #   @param account [String]
      #
      #   @param limit [String] Number of transactions to return
      #
      #   @param marker [String] The marker used for pagination. Default: `null`
      #
      #   @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
