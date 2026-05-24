# frozen_string_literal: true

module Onlyfansapi
  module Models
    # @see Onlyfansapi::Resources::Payouts#request_manual_withdrawal
    class PayoutRequestManualWithdrawalParams < Onlyfansapi::Internal::Type::BaseModel
      extend Onlyfansapi::Internal::Type::RequestParameters::Converter
      include Onlyfansapi::Internal::Type::RequestParameters

      # @!attribute account
      #
      #   @return [String]
      required :account, String

      # @!attribute amount
      #   The amount to withdraw. Amount may not be higher than the current balance.
      #
      #   @return [Integer]
      required :amount, Integer

      # @!method initialize(account:, amount:, request_options: {})
      #   @param account [String]
      #
      #   @param amount [Integer] The amount to withdraw. Amount may not be higher than the current balance.
      #
      #   @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
