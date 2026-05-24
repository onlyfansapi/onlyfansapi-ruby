# frozen_string_literal: true

module Onlyfansapi
  module Models
    # @see Onlyfansapi::Resources::TrialLinks#retrieve_stats
    class TrialLinkRetrieveStatsParams < Onlyfansapi::Internal::Type::BaseModel
      extend Onlyfansapi::Internal::Type::RequestParameters::Converter
      include Onlyfansapi::Internal::Type::RequestParameters

      # @!attribute account
      #
      #   @return [String]
      required :account, String

      # @!attribute trial_link_id
      #
      #   @return [String]
      required :trial_link_id, String

      # @!attribute date_end
      #   Optional stats range end date
      #
      #   @return [String, nil]
      optional :date_end, String

      # @!attribute date_start
      #   Optional stats range start date
      #
      #   @return [String, nil]
      optional :date_start, String

      # @!method initialize(account:, trial_link_id:, date_end: nil, date_start: nil, request_options: {})
      #   @param account [String]
      #
      #   @param trial_link_id [String]
      #
      #   @param date_end [String] Optional stats range end date
      #
      #   @param date_start [String] Optional stats range start date
      #
      #   @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
