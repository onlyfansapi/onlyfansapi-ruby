# frozen_string_literal: true

module Onlyfans
  module Models
    # @see Onlyfans::Resources::Payouts#update_frequency
    class PayoutUpdateFrequencyParams < Onlyfans::Internal::Type::BaseModel
      extend Onlyfans::Internal::Type::RequestParameters::Converter
      include Onlyfans::Internal::Type::RequestParameters

      # @!attribute account
      #
      #   @return [String]
      required :account, String

      # @!attribute frequency
      #   The new payout frequency
      #
      #   @return [Symbol, Onlyfans::Models::PayoutUpdateFrequencyParams::Frequency]
      required :frequency, enum: -> { Onlyfans::PayoutUpdateFrequencyParams::Frequency }

      # @!method initialize(account:, frequency:, request_options: {})
      #   @param account [String]
      #
      #   @param frequency [Symbol, Onlyfans::Models::PayoutUpdateFrequencyParams::Frequency] The new payout frequency
      #
      #   @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}]

      # The new payout frequency
      module Frequency
        extend Onlyfans::Internal::Type::Enum

        MANUAL = :manual
        WEEKLY = :weekly
        MONTHLY = :monthly

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
