# frozen_string_literal: true

module Onlyfansapi
  module Models
    module Fans
      # @see Onlyfansapi::Resources::Fans::Summary#generate_summary
      class SummaryGenerateSummaryParams < Onlyfansapi::Internal::Type::BaseModel
        extend Onlyfansapi::Internal::Type::RequestParameters::Converter
        include Onlyfansapi::Internal::Type::RequestParameters

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
        optional :regenerate, Onlyfansapi::Internal::Type::Boolean

        # @!method initialize(account:, fan_id:, regenerate: nil, request_options: {})
        #   @param account [String]
        #
        #   @param fan_id [String]
        #
        #   @param regenerate [Boolean] Set to true to regenerate an existing completed summary.
        #
        #   @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
