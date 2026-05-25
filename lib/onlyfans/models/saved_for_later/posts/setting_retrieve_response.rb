# frozen_string_literal: true

module Onlyfans
  module Models
    module SavedForLater
      module Posts
        # @see Onlyfans::Resources::SavedForLater::Posts::Settings#retrieve
        class SettingRetrieveResponse < Onlyfans::Internal::Type::BaseModel
          # @!attribute _meta
          #
          #   @return [Onlyfans::Models::SavedForLater::Posts::SettingRetrieveResponse::Meta, nil]
          optional :_meta, -> { Onlyfans::Models::SavedForLater::Posts::SettingRetrieveResponse::Meta }

          # @!attribute data
          #
          #   @return [Onlyfans::Models::SavedForLater::Posts::SettingRetrieveResponse::Data, nil]
          optional :data, -> { Onlyfans::Models::SavedForLater::Posts::SettingRetrieveResponse::Data }

          # @!method initialize(_meta: nil, data: nil)
          #   @param _meta [Onlyfans::Models::SavedForLater::Posts::SettingRetrieveResponse::Meta]
          #   @param data [Onlyfans::Models::SavedForLater::Posts::SettingRetrieveResponse::Data]

          # @see Onlyfans::Models::SavedForLater::Posts::SettingRetrieveResponse#_meta
          class Meta < Onlyfans::Internal::Type::BaseModel
            # @!attribute _cache
            #
            #   @return [Onlyfans::Models::SavedForLater::Posts::SettingRetrieveResponse::Meta::Cache, nil]
            optional :_cache, -> { Onlyfans::Models::SavedForLater::Posts::SettingRetrieveResponse::Meta::Cache }

            # @!attribute _credits
            #
            #   @return [Onlyfans::Models::SavedForLater::Posts::SettingRetrieveResponse::Meta::Credits, nil]
            optional :_credits, -> { Onlyfans::Models::SavedForLater::Posts::SettingRetrieveResponse::Meta::Credits }

            # @!attribute _rate_limits
            #
            #   @return [Onlyfans::Models::SavedForLater::Posts::SettingRetrieveResponse::Meta::RateLimits, nil]
            optional :_rate_limits,
                     -> { Onlyfans::Models::SavedForLater::Posts::SettingRetrieveResponse::Meta::RateLimits }

            # @!method initialize(_cache: nil, _credits: nil, _rate_limits: nil)
            #   @param _cache [Onlyfans::Models::SavedForLater::Posts::SettingRetrieveResponse::Meta::Cache]
            #   @param _credits [Onlyfans::Models::SavedForLater::Posts::SettingRetrieveResponse::Meta::Credits]
            #   @param _rate_limits [Onlyfans::Models::SavedForLater::Posts::SettingRetrieveResponse::Meta::RateLimits]

            # @see Onlyfans::Models::SavedForLater::Posts::SettingRetrieveResponse::Meta#_cache
            class Cache < Onlyfans::Internal::Type::BaseModel
              # @!attribute is_cached
              #
              #   @return [Boolean, nil]
              optional :is_cached, Onlyfans::Internal::Type::Boolean

              # @!attribute note
              #
              #   @return [String, nil]
              optional :note, String

              # @!method initialize(is_cached: nil, note: nil)
              #   @param is_cached [Boolean]
              #   @param note [String]
            end

            # @see Onlyfans::Models::SavedForLater::Posts::SettingRetrieveResponse::Meta#_credits
            class Credits < Onlyfans::Internal::Type::BaseModel
              # @!attribute balance
              #
              #   @return [Integer, nil]
              optional :balance, Integer

              # @!attribute note
              #
              #   @return [String, nil]
              optional :note, String

              # @!attribute used
              #
              #   @return [Integer, nil]
              optional :used, Integer

              # @!method initialize(balance: nil, note: nil, used: nil)
              #   @param balance [Integer]
              #   @param note [String]
              #   @param used [Integer]
            end

            # @see Onlyfans::Models::SavedForLater::Posts::SettingRetrieveResponse::Meta#_rate_limits
            class RateLimits < Onlyfans::Internal::Type::BaseModel
              # @!attribute limit_day
              #
              #   @return [Integer, nil]
              optional :limit_day, Integer

              # @!attribute limit_minute
              #
              #   @return [Integer, nil]
              optional :limit_minute, Integer

              # @!attribute remaining_day
              #
              #   @return [Integer, nil]
              optional :remaining_day, Integer

              # @!attribute remaining_minute
              #
              #   @return [Integer, nil]
              optional :remaining_minute, Integer

              # @!method initialize(limit_day: nil, limit_minute: nil, remaining_day: nil, remaining_minute: nil)
              #   @param limit_day [Integer]
              #   @param limit_minute [Integer]
              #   @param remaining_day [Integer]
              #   @param remaining_minute [Integer]
            end
          end

          # @see Onlyfans::Models::SavedForLater::Posts::SettingRetrieveResponse#data
          class Data < Onlyfans::Internal::Type::BaseModel
            # @!attribute current_code
            #
            #   @return [Integer, nil]
            optional :current_code, Integer, api_name: :currentCode

            # @!attribute is_enabled
            #
            #   @return [Boolean, nil]
            optional :is_enabled, Onlyfans::Internal::Type::Boolean, api_name: :isEnabled

            # @!attribute options
            #
            #   @return [Array<Integer>, nil]
            optional :options, Onlyfans::Internal::Type::ArrayOf[Integer]

            # @!method initialize(current_code: nil, is_enabled: nil, options: nil)
            #   @param current_code [Integer]
            #   @param is_enabled [Boolean]
            #   @param options [Array<Integer>]
          end
        end
      end
    end
  end
end
