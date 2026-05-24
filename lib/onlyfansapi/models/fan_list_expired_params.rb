# frozen_string_literal: true

module Onlyfansapi
  module Models
    # @see Onlyfansapi::Resources::Fans#list_expired
    class FanListExpiredParams < Onlyfansapi::Internal::Type::BaseModel
      extend Onlyfansapi::Internal::Type::RequestParameters::Converter
      include Onlyfansapi::Internal::Type::RequestParameters

      # @!attribute account
      #
      #   @return [String]
      required :account, String

      # @!attribute filter
      #
      #   @return [Onlyfansapi::Models::FanListExpiredParams::Filter, nil]
      optional :filter, -> { Onlyfansapi::FanListExpiredParams::Filter }

      # @!attribute limit
      #   Number of fans to return (1-50)
      #
      #   @return [String, nil]
      optional :limit, String, nil?: true

      # @!attribute offset
      #   Number of fans to skip
      #
      #   @return [String, nil]
      optional :offset, String, nil?: true

      # @!attribute type
      #   Filter by fan type
      #
      #   @return [String, nil]
      optional :type, String, nil?: true

      # @!method initialize(account:, filter: nil, limit: nil, offset: nil, type: nil, request_options: {})
      #   @param account [String]
      #
      #   @param filter [Onlyfansapi::Models::FanListExpiredParams::Filter]
      #
      #   @param limit [String, nil] Number of fans to return (1-50)
      #
      #   @param offset [String, nil] Number of fans to skip
      #
      #   @param type [String, nil] Filter by fan type
      #
      #   @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}]

      class Filter < Onlyfansapi::Internal::Type::BaseModel
        # @!attribute duration
        #   Filter by minimum subscription duration (days)
        #
        #   @return [String, nil]
        optional :duration, String, nil?: true

        # @!attribute online
        #   Filter by online status (1 for online)
        #
        #   @return [String, nil]
        optional :online, String, nil?: true

        # @!attribute tips
        #   Filter by minimum tips
        #
        #   @return [String, nil]
        optional :tips, String, nil?: true

        # @!attribute total_spent
        #   Filter by minimum total spent
        #
        #   @return [String, nil]
        optional :total_spent, String, nil?: true

        # @!method initialize(duration: nil, online: nil, tips: nil, total_spent: nil)
        #   @param duration [String, nil] Filter by minimum subscription duration (days)
        #
        #   @param online [String, nil] Filter by online status (1 for online)
        #
        #   @param tips [String, nil] Filter by minimum tips
        #
        #   @param total_spent [String, nil] Filter by minimum total spent
      end
    end
  end
end
