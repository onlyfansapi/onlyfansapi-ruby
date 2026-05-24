# frozen_string_literal: true

module Onlyfansapi
  module Models
    module SavedForLater
      module Posts
        # @see Onlyfansapi::Resources::SavedForLater::Posts::Settings#enable_or_update_automatic_posting
        class SettingEnableOrUpdateAutomaticPostingParams < Onlyfansapi::Internal::Type::BaseModel
          extend Onlyfansapi::Internal::Type::RequestParameters::Converter
          include Onlyfansapi::Internal::Type::RequestParameters

          # @!attribute account
          #
          #   @return [String]
          required :account, String

          # @!attribute period
          #   The automatic posting interval (in hours)
          #
          #   @return [Integer, Onlyfansapi::Models::SavedForLater::Posts::SettingEnableOrUpdateAutomaticPostingParams::Period]
          required :period,
                   enum: -> { Onlyfansapi::SavedForLater::Posts::SettingEnableOrUpdateAutomaticPostingParams::Period }

          # @!method initialize(account:, period:, request_options: {})
          #   @param account [String]
          #
          #   @param period [Integer, Onlyfansapi::Models::SavedForLater::Posts::SettingEnableOrUpdateAutomaticPostingParams::Period] The automatic posting interval (in hours)
          #
          #   @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}]

          # The automatic posting interval (in hours)
          module Period
            extend Onlyfansapi::Internal::Type::Enum

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
