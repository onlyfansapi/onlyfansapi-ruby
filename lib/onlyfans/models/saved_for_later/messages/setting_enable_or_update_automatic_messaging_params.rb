# frozen_string_literal: true

module Onlyfans
  module Models
    module SavedForLater
      module Messages
        # @see Onlyfans::Resources::SavedForLater::Messages::Settings#enable_or_update_automatic_messaging
        class SettingEnableOrUpdateAutomaticMessagingParams < Onlyfans::Internal::Type::BaseModel
          extend Onlyfans::Internal::Type::RequestParameters::Converter
          include Onlyfans::Internal::Type::RequestParameters

          # @!attribute account
          #
          #   @return [String]
          required :account, String

          # @!attribute period
          #   The automatic messaging interval (in hours)
          #
          #   @return [Integer, Onlyfans::Models::SavedForLater::Messages::SettingEnableOrUpdateAutomaticMessagingParams::Period]
          required :period,
                   enum: -> { Onlyfans::SavedForLater::Messages::SettingEnableOrUpdateAutomaticMessagingParams::Period }

          # @!method initialize(account:, period:, request_options: {})
          #   @param account [String]
          #
          #   @param period [Integer, Onlyfans::Models::SavedForLater::Messages::SettingEnableOrUpdateAutomaticMessagingParams::Period] The automatic messaging interval (in hours)
          #
          #   @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}]

          # The automatic messaging interval (in hours)
          module Period
            extend Onlyfans::Internal::Type::Enum

            PERIOD_6 = 6
            PERIOD_12 = 12
            PERIOD_24 = 24
            PERIOD_48 = 48

            # @!method self.values
            #   @return [Array<Integer>]
          end
        end
      end
    end
  end
end
