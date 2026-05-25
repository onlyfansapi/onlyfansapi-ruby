# frozen_string_literal: true

module Onlyfans
  module Models
    # @see Onlyfans::Resources::Me#retrieve
    class MeRetrieveParams < Onlyfans::Internal::Type::BaseModel
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
