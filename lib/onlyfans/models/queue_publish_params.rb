# frozen_string_literal: true

module Onlyfans
  module Models
    # @see Onlyfans::Resources::Queue#publish
    class QueuePublishParams < Onlyfans::Internal::Type::BaseModel
      extend Onlyfans::Internal::Type::RequestParameters::Converter
      include Onlyfans::Internal::Type::RequestParameters

      # @!attribute account
      #
      #   @return [String]
      required :account, String

      # @!attribute queue_id
      #
      #   @return [String]
      required :queue_id, String

      # @!method initialize(account:, queue_id:, request_options: {})
      #   @param account [String]
      #   @param queue_id [String]
      #   @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
