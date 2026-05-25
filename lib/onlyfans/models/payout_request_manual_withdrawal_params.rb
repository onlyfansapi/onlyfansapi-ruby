# frozen_string_literal: true

module Onlyfans
  module Models
    # @see Onlyfans::Resources::Payouts#request_manual_withdrawal
    class PayoutRequestManualWithdrawalParams < Onlyfans::Internal::Type::BaseModel
      extend Onlyfans::Internal::Type::RequestParameters::Converter
      include Onlyfans::Internal::Type::RequestParameters

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
      #   @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
