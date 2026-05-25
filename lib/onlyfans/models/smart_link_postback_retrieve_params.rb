# frozen_string_literal: true

module Onlyfans
  module Models
    # @see Onlyfans::Resources::SmartLinkPostbacks#retrieve
    class SmartLinkPostbackRetrieveParams < Onlyfans::Internal::Type::BaseModel
      extend Onlyfans::Internal::Type::RequestParameters::Converter
      include Onlyfans::Internal::Type::RequestParameters

      # @!attribute postback_id
      #
      #   @return [Integer]
      required :postback_id, Integer

      # @!method initialize(postback_id:, request_options: {})
      #   @param postback_id [Integer]
      #   @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
