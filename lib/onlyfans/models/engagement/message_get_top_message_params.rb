# frozen_string_literal: true

module Onlyfans
  module Models
    module Engagement
      # @see Onlyfans::Resources::Engagement::Messages#get_top_message
      class MessageGetTopMessageParams < Onlyfans::Internal::Type::BaseModel
        extend Onlyfans::Internal::Type::RequestParameters::Converter
        include Onlyfans::Internal::Type::RequestParameters

        # @!attribute account
        #
        #   @return [String]
        required :account, String

        # @!attribute end_date
        #   The end date for the period. Keep empty to retrieve until now. MUST BE DATE
        #   AFTER `startDate`.
        #
        #   @return [String, nil]
        optional :end_date, String

        # @!attribute start_date
        #   The start date for the period. Keep empty to retrieve from the model start date.
        #
        #   @return [String, nil]
        optional :start_date, String

        # @!method initialize(account:, end_date: nil, start_date: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Onlyfans::Models::Engagement::MessageGetTopMessageParams} for more details.
        #
        #   @param account [String]
        #
        #   @param end_date [String] The end date for the period. Keep empty to retrieve until now. MUST BE DATE AFTE
        #
        #   @param start_date [String] The start date for the period. Keep empty to retrieve from the model start date.
        #
        #   @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
