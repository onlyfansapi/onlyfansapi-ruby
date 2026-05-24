# frozen_string_literal: true

module Onlyfansapi
  module Models
    # @see Onlyfansapi::Resources::Whoami#retrieve
    class WhoamiRetrieveResponse < Onlyfansapi::Internal::Type::BaseModel
      # @!attribute api_key
      #
      #   @return [Onlyfansapi::Models::WhoamiRetrieveResponse::APIKey, nil]
      optional :api_key, -> { Onlyfansapi::Models::WhoamiRetrieveResponse::APIKey }

      # @!attribute team
      #
      #   @return [Onlyfansapi::Models::WhoamiRetrieveResponse::Team, nil]
      optional :team, -> { Onlyfansapi::Models::WhoamiRetrieveResponse::Team }

      # @!method initialize(api_key: nil, team: nil)
      #   @param api_key [Onlyfansapi::Models::WhoamiRetrieveResponse::APIKey]
      #   @param team [Onlyfansapi::Models::WhoamiRetrieveResponse::Team]

      # @see Onlyfansapi::Models::WhoamiRetrieveResponse#api_key
      class APIKey < Onlyfansapi::Internal::Type::BaseModel
        # @!attribute created_at
        #
        #   @return [String, nil]
        optional :created_at, String

        # @!attribute last_used_at
        #
        #   @return [String, nil]
        optional :last_used_at, String

        # @!attribute name
        #
        #   @return [String, nil]
        optional :name, String

        # @!method initialize(created_at: nil, last_used_at: nil, name: nil)
        #   @param created_at [String]
        #   @param last_used_at [String]
        #   @param name [String]
      end

      # @see Onlyfansapi::Models::WhoamiRetrieveResponse#team
      class Team < Onlyfansapi::Internal::Type::BaseModel
        # @!attribute name
        #
        #   @return [String, nil]
        optional :name, String

        # @!attribute slug
        #
        #   @return [String, nil]
        optional :slug, String

        # @!method initialize(name: nil, slug: nil)
        #   @param name [String]
        #   @param slug [String]
      end
    end
  end
end
