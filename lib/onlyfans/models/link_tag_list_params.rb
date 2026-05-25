# frozen_string_literal: true

module Onlyfans
  module Models
    # @see Onlyfans::Resources::LinkTags#list
    class LinkTagListParams < Onlyfans::Internal::Type::BaseModel
      extend Onlyfans::Internal::Type::RequestParameters::Converter
      include Onlyfans::Internal::Type::RequestParameters

      # @!attribute type
      #   Filter by link type. If not provided, returns tags for both types.
      #
      #   @return [Symbol, Onlyfans::Models::LinkTagListParams::Type, nil]
      optional :type, enum: -> { Onlyfans::LinkTagListParams::Type }

      # @!method initialize(type: nil, request_options: {})
      #   @param type [Symbol, Onlyfans::Models::LinkTagListParams::Type] Filter by link type. If not provided, returns tags for both types.
      #
      #   @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}]

      # Filter by link type. If not provided, returns tags for both types.
      module Type
        extend Onlyfans::Internal::Type::Enum

        TRIAL_LINKS = :trial_links
        TRACKING_LINKS = :tracking_links

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
