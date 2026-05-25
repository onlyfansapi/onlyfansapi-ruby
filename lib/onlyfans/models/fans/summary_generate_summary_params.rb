# frozen_string_literal: true

module Onlyfans
  module Models
    module Fans
      # @see Onlyfans::Resources::Fans::Summary#generate_summary
      class SummaryGenerateSummaryParams < Onlyfans::Internal::Type::BaseModel
        extend Onlyfans::Internal::Type::RequestParameters::Converter
        include Onlyfans::Internal::Type::RequestParameters

        # @!attribute account
        #
        #   @return [String]
        required :account, String

        # @!attribute fan_id
        #
        #   @return [String]
        required :fan_id, String

        # @!attribute regenerate
        #   Set to true to regenerate an existing completed summary.
        #
        #   @return [Boolean, nil]
        optional :regenerate, Onlyfans::Internal::Type::Boolean

        # @!method initialize(account:, fan_id:, regenerate: nil, request_options: {})
        #   @param account [String]
        #
        #   @param fan_id [String]
        #
        #   @param regenerate [Boolean] Set to true to regenerate an existing completed summary.
        #
        #   @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
