# frozen_string_literal: true

module Onlyfans
  module Models
    # @see Onlyfans::Resources::Promotions#stop
    class PromotionStopParams < Onlyfans::Internal::Type::BaseModel
      extend Onlyfans::Internal::Type::RequestParameters::Converter
      include Onlyfans::Internal::Type::RequestParameters

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
      #   @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
