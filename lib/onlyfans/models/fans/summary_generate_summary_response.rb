# frozen_string_literal: true

module Onlyfans
  module Models
    module Fans
      # @see Onlyfans::Resources::Fans::Summary#generate_summary
      class SummaryGenerateSummaryResponse < Onlyfans::Internal::Type::BaseModel
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
