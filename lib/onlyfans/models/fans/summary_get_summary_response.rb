# frozen_string_literal: true

module Onlyfans
  module Models
    module Fans
      # @see Onlyfans::Resources::Fans::Summary#get_summary
      class SummaryGetSummaryResponse < Onlyfans::Internal::Type::BaseModel
        # @!attribute analyzed_message_count
        #
        #   @return [Integer, nil]
        optional :analyzed_message_count, Integer

        # @!attribute error_message
        #
        #   @return [String, nil]
        optional :error_message, String, nil?: true

        # @!attribute last_analyzed_at
        #
        #   @return [String, nil]
        optional :last_analyzed_at, String

        # @!attribute last_buy_date
        #
        #   @return [String, nil]
        optional :last_buy_date, String

        # @!attribute status
        #
        #   @return [String, nil]
        optional :status, String

        # @!attribute summary_data
        #
        #   @return [Onlyfans::Models::Fans::SummaryGetSummaryResponse::SummaryData, nil]
        optional :summary_data, -> { Onlyfans::Models::Fans::SummaryGetSummaryResponse::SummaryData }

        # @!method initialize(analyzed_message_count: nil, error_message: nil, last_analyzed_at: nil, last_buy_date: nil, status: nil, summary_data: nil)
        #   @param analyzed_message_count [Integer]
        #   @param error_message [String, nil]
        #   @param last_analyzed_at [String]
        #   @param last_buy_date [String]
        #   @param status [String]
        #   @param summary_data [Onlyfans::Models::Fans::SummaryGetSummaryResponse::SummaryData]

        # @see Onlyfans::Models::Fans::SummaryGetSummaryResponse#summary_data
        class SummaryData < Onlyfans::Internal::Type::BaseModel
          # @!attribute content_dislikes
          #
          #   @return [String, nil]
          optional :content_dislikes, String

          # @!attribute content_preferences
          #
          #   @return [String, nil]
          optional :content_preferences, String

          # @!attribute dos_and_donts
          #
          #   @return [String, nil]
          optional :dos_and_donts, String

          # @!attribute family_pets
          #
          #   @return [String, nil]
          optional :family_pets, String

          # @!attribute hobbies
          #
          #   @return [String, nil]
          optional :hobbies, String

          # @!attribute interests
          #
          #   @return [String, nil]
          optional :interests, String

          # @!attribute kinks
          #
          #   @return [String, nil]
          optional :kinks, String

          # @!attribute name
          #
          #   @return [String, nil]
          optional :name, String

          # @!attribute other_notes
          #
          #   @return [String, nil]
          optional :other_notes, String

          # @!attribute preferred_name
          #
          #   @return [String, nil]
          optional :preferred_name, String

          # @!attribute requests
          #
          #   @return [String, nil]
          optional :requests, String

          # @!attribute spend_cadence
          #
          #   @return [String, nil]
          optional :spend_cadence, String

          # @!attribute themes
          #
          #   @return [String, nil]
          optional :themes, String

          # @!attribute travel_plans
          #
          #   @return [String, nil]
          optional :travel_plans, String

          # @!method initialize(content_dislikes: nil, content_preferences: nil, dos_and_donts: nil, family_pets: nil, hobbies: nil, interests: nil, kinks: nil, name: nil, other_notes: nil, preferred_name: nil, requests: nil, spend_cadence: nil, themes: nil, travel_plans: nil)
          #   @param content_dislikes [String]
          #   @param content_preferences [String]
          #   @param dos_and_donts [String]
          #   @param family_pets [String]
          #   @param hobbies [String]
          #   @param interests [String]
          #   @param kinks [String]
          #   @param name [String]
          #   @param other_notes [String]
          #   @param preferred_name [String]
          #   @param requests [String]
          #   @param spend_cadence [String]
          #   @param themes [String]
          #   @param travel_plans [String]
        end
      end
    end
  end
end
