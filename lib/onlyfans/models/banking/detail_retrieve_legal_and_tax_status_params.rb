# frozen_string_literal: true

module Onlyfans
  module Models
    module Banking
      # @see Onlyfans::Resources::Banking::Details#retrieve_legal_and_tax_status
      class DetailRetrieveLegalAndTaxStatusParams < Onlyfans::Internal::Type::BaseModel
        extend Onlyfans::Internal::Type::RequestParameters::Converter
        include Onlyfans::Internal::Type::RequestParameters

        # @!attribute account
        #
        #   @return [String]
        required :account, String

        # @!method initialize(account:, request_options: {})
        #   @param account [String]
        #   @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
