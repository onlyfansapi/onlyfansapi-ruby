# frozen_string_literal: true

module Onlyfansapi
  module Models
    module Fans
      # @see Onlyfansapi::Resources::Fans::Summary#generate_summary
      class SummaryGenerateSummaryResponse < Onlyfansapi::Internal::Type::BaseModel
        # @!attribute message
        #
        #   @return [String, nil]
        optional :message, String

        # @!attribute status
        #
        #   @return [String, nil]
        optional :status, String

        # @!method initialize(message: nil, status: nil)
        #   @param message [String]
        #   @param status [String]
      end
    end
  end
end
