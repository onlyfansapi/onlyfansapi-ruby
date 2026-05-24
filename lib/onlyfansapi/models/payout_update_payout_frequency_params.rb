# frozen_string_literal: true

module Onlyfansapi
  module Models
    # @see Onlyfansapi::Resources::Payouts#update_payout_frequency
    class PayoutUpdatePayoutFrequencyParams < Onlyfansapi::Internal::Type::BaseModel
      extend Onlyfansapi::Internal::Type::RequestParameters::Converter
      include Onlyfansapi::Internal::Type::RequestParameters

      # @!attribute account
      #
      #   @return [String]
      required :account, String

      # @!attribute frequency
      #   The new payout frequency
      #
      #   @return [Symbol, Onlyfansapi::Models::PayoutUpdatePayoutFrequencyParams::Frequency]
      required :frequency, enum: -> { Onlyfansapi::PayoutUpdatePayoutFrequencyParams::Frequency }

      # @!method initialize(account:, frequency:, request_options: {})
      #   @param account [String]
      #
      #   @param frequency [Symbol, Onlyfansapi::Models::PayoutUpdatePayoutFrequencyParams::Frequency] The new payout frequency
      #
      #   @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}]

      # The new payout frequency
      module Frequency
        extend Onlyfansapi::Internal::Type::Enum

        MANUAL = :manual
        WEEKLY = :weekly
        MONTHLY = :monthly

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
