# frozen_string_literal: true

module Onlyfansapi
  module Models
    # @see Onlyfansapi::Resources::LinkTags#list
    class LinkTagListParams < Onlyfansapi::Internal::Type::BaseModel
      extend Onlyfansapi::Internal::Type::RequestParameters::Converter
      include Onlyfansapi::Internal::Type::RequestParameters

      # @!attribute type
      #   Filter by link type. If not provided, returns tags for both types.
      #
      #   @return [Symbol, Onlyfansapi::Models::LinkTagListParams::Type, nil]
      optional :type, enum: -> { Onlyfansapi::LinkTagListParams::Type }

      # @!method initialize(type: nil, request_options: {})
      #   @param type [Symbol, Onlyfansapi::Models::LinkTagListParams::Type] Filter by link type. If not provided, returns tags for both types.
      #
      #   @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}]

      # Filter by link type. If not provided, returns tags for both types.
      module Type
        extend Onlyfansapi::Internal::Type::Enum

        TRIAL_LINKS = :trial_links
        TRACKING_LINKS = :tracking_links

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
