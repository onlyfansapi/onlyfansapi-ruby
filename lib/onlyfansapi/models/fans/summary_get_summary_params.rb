# frozen_string_literal: true

module Onlyfansapi
  module Models
    module Fans
      # @see Onlyfansapi::Resources::Fans::Summary#get_summary
      class SummaryGetSummaryParams < Onlyfansapi::Internal::Type::BaseModel
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

        # @!method initialize(account:, fan_id:, request_options: {})
        #   @param account [String]
        #   @param fan_id [String]
        #   @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
