# frozen_string_literal: true

module Onlyfansapi
  module Models
    # @see Onlyfansapi::Resources::Promotions#stop
    class PromotionStopParams < Onlyfansapi::Internal::Type::BaseModel
      extend Onlyfansapi::Internal::Type::RequestParameters::Converter
      include Onlyfansapi::Internal::Type::RequestParameters

      # @!attribute account
      #
      #   @return [String]
      required :account, String

      # @!attribute promotion_id
      #
      #   @return [String]
      required :promotion_id, String

      # @!method initialize(account:, promotion_id:, request_options: {})
      #   @param account [String]
      #   @param promotion_id [String]
      #   @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
