# frozen_string_literal: true

module Onlyfansapi
  module Models
    # @see Onlyfansapi::Resources::SmartLinkPostbacks#retrieve
    class SmartLinkPostbackRetrieveParams < Onlyfansapi::Internal::Type::BaseModel
      extend Onlyfansapi::Internal::Type::RequestParameters::Converter
      include Onlyfansapi::Internal::Type::RequestParameters

      # @!attribute postback_id
      #
      #   @return [Integer]
      required :postback_id, Integer

      # @!method initialize(postback_id:, request_options: {})
      #   @param postback_id [Integer]
      #   @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
