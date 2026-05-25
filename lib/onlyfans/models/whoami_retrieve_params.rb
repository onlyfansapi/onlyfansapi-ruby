# frozen_string_literal: true

module Onlyfans
  module Models
    # @see Onlyfans::Resources::Whoami#retrieve
    class WhoamiRetrieveParams < Onlyfans::Internal::Type::BaseModel
      extend Onlyfans::Internal::Type::RequestParameters::Converter
      include Onlyfans::Internal::Type::RequestParameters

      # @!method initialize(request_options: {})
      #   @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
