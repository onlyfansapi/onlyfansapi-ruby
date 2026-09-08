# frozen_string_literal: true

module Onlyfans
  module Models
    module UserLists
      # Default: OnlyFans accepted every User ID
      #
      # @see Onlyfans::Resources::UserLists::Users#add
      module UserAddResponse
        extend Onlyfans::Internal::Type::Union

        # Default: OnlyFans accepted every User ID
        variant -> { Onlyfans::Models::UserLists::UserAddResponse::UnionMember0 }

        # With `skip_invalid=true`: the rejected User IDs are reported instead of failing the batch
        variant -> { Onlyfans::Models::UserLists::UserAddResponse::UnionMember1 }

        class UnionMember0 < Onlyfans::Internal::Type::BaseModel
          # @!attribute _meta
          #
          #   @return [Onlyfans::Models::UserLists::UserAddResponse::UnionMember0::Meta, nil]
          optional :_meta, -> { Onlyfans::Models::UserLists::UserAddResponse::UnionMember0::Meta }

          # @!attribute data
          #
          #   @return [Onlyfans::Models::UserLists::UserAddResponse::UnionMember0::Data, nil]
          optional :data, -> { Onlyfans::Models::UserLists::UserAddResponse::UnionMember0::Data }

          # @!method initialize(_meta: nil, data: nil)
          #   Default: OnlyFans accepted every User ID
          #
          #   @param _meta [Onlyfans::Models::UserLists::UserAddResponse::UnionMember0::Meta]
          #   @param data [Onlyfans::Models::UserLists::UserAddResponse::UnionMember0::Data]

          # @see Onlyfans::Models::UserLists::UserAddResponse::UnionMember0#_meta
          class Meta < Onlyfans::Internal::Type::BaseModel
            # @!attribute _cache
            #
            #   @return [Onlyfans::Models::UserLists::UserAddResponse::UnionMember0::Meta::Cache, nil]
            optional :_cache, -> { Onlyfans::Models::UserLists::UserAddResponse::UnionMember0::Meta::Cache }

            # @!attribute _credits
            #
            #   @return [Onlyfans::Models::UserLists::UserAddResponse::UnionMember0::Meta::Credits, nil]
            optional :_credits, -> { Onlyfans::Models::UserLists::UserAddResponse::UnionMember0::Meta::Credits }

            # @!attribute _rate_limits
            #
            #   @return [Onlyfans::Models::UserLists::UserAddResponse::UnionMember0::Meta::RateLimits, nil]
            optional :_rate_limits,
                     -> { Onlyfans::Models::UserLists::UserAddResponse::UnionMember0::Meta::RateLimits }

            # @!method initialize(_cache: nil, _credits: nil, _rate_limits: nil)
            #   @param _cache [Onlyfans::Models::UserLists::UserAddResponse::UnionMember0::Meta::Cache]
            #   @param _credits [Onlyfans::Models::UserLists::UserAddResponse::UnionMember0::Meta::Credits]
            #   @param _rate_limits [Onlyfans::Models::UserLists::UserAddResponse::UnionMember0::Meta::RateLimits]

            # @see Onlyfans::Models::UserLists::UserAddResponse::UnionMember0::Meta#_cache
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

            # @see Onlyfans::Models::UserLists::UserAddResponse::UnionMember0::Meta#_credits
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

            # @see Onlyfans::Models::UserLists::UserAddResponse::UnionMember0::Meta#_rate_limits
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

          # @see Onlyfans::Models::UserLists::UserAddResponse::UnionMember0#data
          class Data < Onlyfans::Internal::Type::BaseModel
            # @!attribute number_1224114714
            #
            #   @return [Array<Integer>, nil]
            optional :number_1224114714, Onlyfans::Internal::Type::ArrayOf[Integer], api_name: :"1224114714"

            # @!method initialize(number_1224114714: nil)
            #   @param number_1224114714 [Array<Integer>]
          end
        end

        class UnionMember1 < Onlyfans::Internal::Type::BaseModel
          # @!attribute _meta
          #
          #   @return [Onlyfans::Models::UserLists::UserAddResponse::UnionMember1::Meta, nil]
          optional :_meta, -> { Onlyfans::Models::UserLists::UserAddResponse::UnionMember1::Meta }

          # @!attribute data
          #
          #   @return [Onlyfans::Models::UserLists::UserAddResponse::UnionMember1::Data, nil]
          optional :data, -> { Onlyfans::Models::UserLists::UserAddResponse::UnionMember1::Data }

          # @!method initialize(_meta: nil, data: nil)
          #   With `skip_invalid=true`: the rejected User IDs are reported instead of failing
          #   the batch
          #
          #   @param _meta [Onlyfans::Models::UserLists::UserAddResponse::UnionMember1::Meta]
          #   @param data [Onlyfans::Models::UserLists::UserAddResponse::UnionMember1::Data]

          # @see Onlyfans::Models::UserLists::UserAddResponse::UnionMember1#_meta
          class Meta < Onlyfans::Internal::Type::BaseModel
            # @!attribute _cache
            #
            #   @return [Onlyfans::Models::UserLists::UserAddResponse::UnionMember1::Meta::Cache, nil]
            optional :_cache, -> { Onlyfans::Models::UserLists::UserAddResponse::UnionMember1::Meta::Cache }

            # @!attribute _credits
            #
            #   @return [Onlyfans::Models::UserLists::UserAddResponse::UnionMember1::Meta::Credits, nil]
            optional :_credits, -> { Onlyfans::Models::UserLists::UserAddResponse::UnionMember1::Meta::Credits }

            # @!attribute _rate_limits
            #
            #   @return [Onlyfans::Models::UserLists::UserAddResponse::UnionMember1::Meta::RateLimits, nil]
            optional :_rate_limits,
                     -> { Onlyfans::Models::UserLists::UserAddResponse::UnionMember1::Meta::RateLimits }

            # @!method initialize(_cache: nil, _credits: nil, _rate_limits: nil)
            #   @param _cache [Onlyfans::Models::UserLists::UserAddResponse::UnionMember1::Meta::Cache]
            #   @param _credits [Onlyfans::Models::UserLists::UserAddResponse::UnionMember1::Meta::Credits]
            #   @param _rate_limits [Onlyfans::Models::UserLists::UserAddResponse::UnionMember1::Meta::RateLimits]

            # @see Onlyfans::Models::UserLists::UserAddResponse::UnionMember1::Meta#_cache
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

            # @see Onlyfans::Models::UserLists::UserAddResponse::UnionMember1::Meta#_credits
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

            # @see Onlyfans::Models::UserLists::UserAddResponse::UnionMember1::Meta#_rate_limits
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

          # @see Onlyfans::Models::UserLists::UserAddResponse::UnionMember1#data
          class Data < Onlyfans::Internal::Type::BaseModel
            # @!attribute added
            #
            #   @return [Array<Integer>, nil]
            optional :added, Onlyfans::Internal::Type::ArrayOf[Integer]

            # @!attribute failed
            #
            #   @return [Onlyfans::Models::UserLists::UserAddResponse::UnionMember1::Data::Failed, nil]
            optional :failed, -> { Onlyfans::Models::UserLists::UserAddResponse::UnionMember1::Data::Failed }

            # @!method initialize(added: nil, failed: nil)
            #   @param added [Array<Integer>]
            #   @param failed [Onlyfans::Models::UserLists::UserAddResponse::UnionMember1::Data::Failed]

            # @see Onlyfans::Models::UserLists::UserAddResponse::UnionMember1::Data#failed
            class Failed < Onlyfans::Internal::Type::BaseModel
              # @!attribute number_123456
              #
              #   @return [String, nil]
              optional :number_123456, String, api_name: :"123456"

              # @!method initialize(number_123456: nil)
              #   @param number_123456 [String]
            end
          end
        end

        # @!method self.variants
        #   @return [Array(Onlyfans::Models::UserLists::UserAddResponse::UnionMember0, Onlyfans::Models::UserLists::UserAddResponse::UnionMember1)]
      end
    end
  end
end
