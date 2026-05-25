# frozen_string_literal: true

module Onlyfans
  module Models
    # @see Onlyfans::Resources::SharedTrialLinks#revoke_access
    class SharedTrialLinkRevokeAccessResponse < Onlyfans::Internal::Type::BaseModel
      # @!attribute _meta
      #
      #   @return [Onlyfans::Models::SharedTrialLinkRevokeAccessResponse::Meta, nil]
      optional :_meta, -> { Onlyfans::Models::SharedTrialLinkRevokeAccessResponse::Meta }

      # @!attribute data
      #
      #   @return [Onlyfans::Models::SharedTrialLinkRevokeAccessResponse::Data, nil]
      optional :data, -> { Onlyfans::Models::SharedTrialLinkRevokeAccessResponse::Data }

      # @!method initialize(_meta: nil, data: nil)
      #   @param _meta [Onlyfans::Models::SharedTrialLinkRevokeAccessResponse::Meta]
      #   @param data [Onlyfans::Models::SharedTrialLinkRevokeAccessResponse::Data]

      # @see Onlyfans::Models::SharedTrialLinkRevokeAccessResponse#_meta
      class Meta < Onlyfans::Internal::Type::BaseModel
        # @!attribute _cache
        #
        #   @return [Onlyfans::Models::SharedTrialLinkRevokeAccessResponse::Meta::Cache, nil]
        optional :_cache, -> { Onlyfans::Models::SharedTrialLinkRevokeAccessResponse::Meta::Cache }

        # @!attribute _credits
        #
        #   @return [Onlyfans::Models::SharedTrialLinkRevokeAccessResponse::Meta::Credits, nil]
        optional :_credits, -> { Onlyfans::Models::SharedTrialLinkRevokeAccessResponse::Meta::Credits }

        # @!attribute _rate_limits
        #
        #   @return [Onlyfans::Models::SharedTrialLinkRevokeAccessResponse::Meta::RateLimits, nil]
        optional :_rate_limits, -> { Onlyfans::Models::SharedTrialLinkRevokeAccessResponse::Meta::RateLimits }

        # @!method initialize(_cache: nil, _credits: nil, _rate_limits: nil)
        #   @param _cache [Onlyfans::Models::SharedTrialLinkRevokeAccessResponse::Meta::Cache]
        #   @param _credits [Onlyfans::Models::SharedTrialLinkRevokeAccessResponse::Meta::Credits]
        #   @param _rate_limits [Onlyfans::Models::SharedTrialLinkRevokeAccessResponse::Meta::RateLimits]

        # @see Onlyfans::Models::SharedTrialLinkRevokeAccessResponse::Meta#_cache
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

        # @see Onlyfans::Models::SharedTrialLinkRevokeAccessResponse::Meta#_credits
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

        # @see Onlyfans::Models::SharedTrialLinkRevokeAccessResponse::Meta#_rate_limits
        class RateLimits < Onlyfans::Internal::Type::BaseModel
          # @!attribute limit_day
          #
          #   @return [String, nil]
          optional :limit_day, String, nil?: true

          # @!attribute limit_minute
          #
          #   @return [Integer, nil]
          optional :limit_minute, Integer

          # @!attribute notice
          #
          #   @return [String, nil]
          optional :notice, String

          # @!attribute remaining_day
          #
          #   @return [String, nil]
          optional :remaining_day, String, nil?: true

          # @!attribute remaining_minute
          #
          #   @return [Integer, nil]
          optional :remaining_minute, Integer

          # @!method initialize(limit_day: nil, limit_minute: nil, notice: nil, remaining_day: nil, remaining_minute: nil)
          #   @param limit_day [String, nil]
          #   @param limit_minute [Integer]
          #   @param notice [String]
          #   @param remaining_day [String, nil]
          #   @param remaining_minute [Integer]
        end
      end

      # @see Onlyfans::Models::SharedTrialLinkRevokeAccessResponse#data
      class Data < Onlyfans::Internal::Type::BaseModel
        # @!attribute success
        #
        #   @return [Boolean, nil]
        optional :success, Onlyfans::Internal::Type::Boolean

        # @!method initialize(success: nil)
        #   @param success [Boolean]
      end
    end
  end
end
