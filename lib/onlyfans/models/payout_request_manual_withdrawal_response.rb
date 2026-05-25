# frozen_string_literal: true

module Onlyfans
  module Models
    # @see Onlyfans::Resources::Payouts#request_manual_withdrawal
    module PayoutRequestManualWithdrawalResponse
      extend Onlyfans::Internal::Type::Union

      variant -> { Onlyfans::Models::PayoutRequestManualWithdrawalResponse::UnionMember0 }

      variant -> { Onlyfans::Models::PayoutRequestManualWithdrawalResponse::UnionMember1 }

      class UnionMember0 < Onlyfans::Internal::Type::BaseModel
        # @!attribute _meta
        #
        #   @return [Onlyfans::Models::PayoutRequestManualWithdrawalResponse::UnionMember0::Meta, nil]
        optional :_meta, -> { Onlyfans::Models::PayoutRequestManualWithdrawalResponse::UnionMember0::Meta }

        # @!attribute data
        #
        #   @return [Onlyfans::Models::PayoutRequestManualWithdrawalResponse::UnionMember0::Data, nil]
        optional :data, -> { Onlyfans::Models::PayoutRequestManualWithdrawalResponse::UnionMember0::Data }

        # @!method initialize(_meta: nil, data: nil)
        #   @param _meta [Onlyfans::Models::PayoutRequestManualWithdrawalResponse::UnionMember0::Meta]
        #   @param data [Onlyfans::Models::PayoutRequestManualWithdrawalResponse::UnionMember0::Data]

        # @see Onlyfans::Models::PayoutRequestManualWithdrawalResponse::UnionMember0#_meta
        class Meta < Onlyfans::Internal::Type::BaseModel
          # @!attribute _cache
          #
          #   @return [Onlyfans::Models::PayoutRequestManualWithdrawalResponse::UnionMember0::Meta::Cache, nil]
          optional :_cache,
                   -> { Onlyfans::Models::PayoutRequestManualWithdrawalResponse::UnionMember0::Meta::Cache }

          # @!attribute _credits
          #
          #   @return [Onlyfans::Models::PayoutRequestManualWithdrawalResponse::UnionMember0::Meta::Credits, nil]
          optional :_credits,
                   -> { Onlyfans::Models::PayoutRequestManualWithdrawalResponse::UnionMember0::Meta::Credits }

          # @!attribute _rate_limits
          #
          #   @return [Onlyfans::Models::PayoutRequestManualWithdrawalResponse::UnionMember0::Meta::RateLimits, nil]
          optional :_rate_limits,
                   -> { Onlyfans::Models::PayoutRequestManualWithdrawalResponse::UnionMember0::Meta::RateLimits }

          # @!method initialize(_cache: nil, _credits: nil, _rate_limits: nil)
          #   @param _cache [Onlyfans::Models::PayoutRequestManualWithdrawalResponse::UnionMember0::Meta::Cache]
          #   @param _credits [Onlyfans::Models::PayoutRequestManualWithdrawalResponse::UnionMember0::Meta::Credits]
          #   @param _rate_limits [Onlyfans::Models::PayoutRequestManualWithdrawalResponse::UnionMember0::Meta::RateLimits]

          # @see Onlyfans::Models::PayoutRequestManualWithdrawalResponse::UnionMember0::Meta#_cache
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

          # @see Onlyfans::Models::PayoutRequestManualWithdrawalResponse::UnionMember0::Meta#_credits
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

          # @see Onlyfans::Models::PayoutRequestManualWithdrawalResponse::UnionMember0::Meta#_rate_limits
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

        # @see Onlyfans::Models::PayoutRequestManualWithdrawalResponse::UnionMember0#data
        class Data < Onlyfans::Internal::Type::BaseModel
          # @!attribute list
          #
          #   @return [Array<Onlyfans::Models::PayoutRequestManualWithdrawalResponse::UnionMember0::Data::List>, nil]
          optional :list,
                   -> { Onlyfans::Internal::Type::ArrayOf[Onlyfans::Models::PayoutRequestManualWithdrawalResponse::UnionMember0::Data::List] }

          # @!method initialize(list: nil)
          #   @param list [Array<Onlyfans::Models::PayoutRequestManualWithdrawalResponse::UnionMember0::Data::List>]

          class List < Onlyfans::Internal::Type::BaseModel
            # @!attribute reject_reason
            #
            #   @return [String, nil]
            optional :reject_reason, String, api_name: :rejectReason, nil?: true

            # @!attribute state
            #
            #   @return [String, nil]
            optional :state, String

            # @!method initialize(reject_reason: nil, state: nil)
            #   @param reject_reason [String, nil]
            #   @param state [String]
          end
        end
      end

      class UnionMember1 < Onlyfans::Internal::Type::BaseModel
        # @!attribute _meta
        #
        #   @return [Onlyfans::Models::PayoutRequestManualWithdrawalResponse::UnionMember1::Meta, nil]
        optional :_meta, -> { Onlyfans::Models::PayoutRequestManualWithdrawalResponse::UnionMember1::Meta }

        # @!attribute data
        #
        #   @return [Onlyfans::Models::PayoutRequestManualWithdrawalResponse::UnionMember1::Data, nil]
        optional :data, -> { Onlyfans::Models::PayoutRequestManualWithdrawalResponse::UnionMember1::Data }

        # @!method initialize(_meta: nil, data: nil)
        #   @param _meta [Onlyfans::Models::PayoutRequestManualWithdrawalResponse::UnionMember1::Meta]
        #   @param data [Onlyfans::Models::PayoutRequestManualWithdrawalResponse::UnionMember1::Data]

        # @see Onlyfans::Models::PayoutRequestManualWithdrawalResponse::UnionMember1#_meta
        class Meta < Onlyfans::Internal::Type::BaseModel
          # @!attribute _cache
          #
          #   @return [Onlyfans::Models::PayoutRequestManualWithdrawalResponse::UnionMember1::Meta::Cache, nil]
          optional :_cache,
                   -> { Onlyfans::Models::PayoutRequestManualWithdrawalResponse::UnionMember1::Meta::Cache }

          # @!attribute _credits
          #
          #   @return [Onlyfans::Models::PayoutRequestManualWithdrawalResponse::UnionMember1::Meta::Credits, nil]
          optional :_credits,
                   -> { Onlyfans::Models::PayoutRequestManualWithdrawalResponse::UnionMember1::Meta::Credits }

          # @!attribute _rate_limits
          #
          #   @return [Onlyfans::Models::PayoutRequestManualWithdrawalResponse::UnionMember1::Meta::RateLimits, nil]
          optional :_rate_limits,
                   -> { Onlyfans::Models::PayoutRequestManualWithdrawalResponse::UnionMember1::Meta::RateLimits }

          # @!method initialize(_cache: nil, _credits: nil, _rate_limits: nil)
          #   @param _cache [Onlyfans::Models::PayoutRequestManualWithdrawalResponse::UnionMember1::Meta::Cache]
          #   @param _credits [Onlyfans::Models::PayoutRequestManualWithdrawalResponse::UnionMember1::Meta::Credits]
          #   @param _rate_limits [Onlyfans::Models::PayoutRequestManualWithdrawalResponse::UnionMember1::Meta::RateLimits]

          # @see Onlyfans::Models::PayoutRequestManualWithdrawalResponse::UnionMember1::Meta#_cache
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

          # @see Onlyfans::Models::PayoutRequestManualWithdrawalResponse::UnionMember1::Meta#_credits
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

          # @see Onlyfans::Models::PayoutRequestManualWithdrawalResponse::UnionMember1::Meta#_rate_limits
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

        # @see Onlyfans::Models::PayoutRequestManualWithdrawalResponse::UnionMember1#data
        class Data < Onlyfans::Internal::Type::BaseModel
          # @!attribute list
          #
          #   @return [Array<Onlyfans::Models::PayoutRequestManualWithdrawalResponse::UnionMember1::Data::List>, nil]
          optional :list,
                   -> { Onlyfans::Internal::Type::ArrayOf[Onlyfans::Models::PayoutRequestManualWithdrawalResponse::UnionMember1::Data::List] }

          # @!method initialize(list: nil)
          #   @param list [Array<Onlyfans::Models::PayoutRequestManualWithdrawalResponse::UnionMember1::Data::List>]

          class List < Onlyfans::Internal::Type::BaseModel
            # @!attribute reject_reason
            #
            #   @return [String, nil]
            optional :reject_reason, String, api_name: :rejectReason, nil?: true

            # @!attribute state
            #
            #   @return [String, nil]
            optional :state, String

            # @!method initialize(reject_reason: nil, state: nil)
            #   @param reject_reason [String, nil]
            #   @param state [String]
          end
        end
      end

      # @!method self.variants
      #   @return [Array(Onlyfans::Models::PayoutRequestManualWithdrawalResponse::UnionMember0, Onlyfans::Models::PayoutRequestManualWithdrawalResponse::UnionMember1)]
    end
  end
end
