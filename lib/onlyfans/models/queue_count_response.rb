# frozen_string_literal: true

module Onlyfans
  module Models
    # @see Onlyfans::Resources::Queue#count
    class QueueCountResponse < Onlyfans::Internal::Type::BaseModel
      # @!attribute _meta
      #
      #   @return [Onlyfans::Models::QueueCountResponse::Meta, nil]
      optional :_meta, -> { Onlyfans::Models::QueueCountResponse::Meta }

      # @!attribute data
      #
      #   @return [Onlyfans::Models::QueueCountResponse::Data, nil]
      optional :data, -> { Onlyfans::Models::QueueCountResponse::Data }

      # @!method initialize(_meta: nil, data: nil)
      #   @param _meta [Onlyfans::Models::QueueCountResponse::Meta]
      #   @param data [Onlyfans::Models::QueueCountResponse::Data]

      # @see Onlyfans::Models::QueueCountResponse#_meta
      class Meta < Onlyfans::Internal::Type::BaseModel
        # @!attribute _cache
        #
        #   @return [Onlyfans::Models::QueueCountResponse::Meta::Cache, nil]
        optional :_cache, -> { Onlyfans::Models::QueueCountResponse::Meta::Cache }

        # @!attribute _credits
        #
        #   @return [Onlyfans::Models::QueueCountResponse::Meta::Credits, nil]
        optional :_credits, -> { Onlyfans::Models::QueueCountResponse::Meta::Credits }

        # @!attribute _rate_limits
        #
        #   @return [Onlyfans::Models::QueueCountResponse::Meta::RateLimits, nil]
        optional :_rate_limits, -> { Onlyfans::Models::QueueCountResponse::Meta::RateLimits }

        # @!method initialize(_cache: nil, _credits: nil, _rate_limits: nil)
        #   @param _cache [Onlyfans::Models::QueueCountResponse::Meta::Cache]
        #   @param _credits [Onlyfans::Models::QueueCountResponse::Meta::Credits]
        #   @param _rate_limits [Onlyfans::Models::QueueCountResponse::Meta::RateLimits]

        # @see Onlyfans::Models::QueueCountResponse::Meta#_cache
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

        # @see Onlyfans::Models::QueueCountResponse::Meta#_credits
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

        # @see Onlyfans::Models::QueueCountResponse::Meta#_rate_limits
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

      # @see Onlyfans::Models::QueueCountResponse#data
      class Data < Onlyfans::Internal::Type::BaseModel
        # @!attribute list
        #
        #   @return [Onlyfans::Models::QueueCountResponse::Data::List, nil]
        optional :list, -> { Onlyfans::Models::QueueCountResponse::Data::List }

        # @!attribute sync_in_process
        #
        #   @return [Boolean, nil]
        optional :sync_in_process, Onlyfans::Internal::Type::Boolean, api_name: :syncInProcess

        # @!method initialize(list: nil, sync_in_process: nil)
        #   @param list [Onlyfans::Models::QueueCountResponse::Data::List]
        #   @param sync_in_process [Boolean]

        # @see Onlyfans::Models::QueueCountResponse::Data#list
        class List < Onlyfans::Internal::Type::BaseModel
          # @!attribute number_2025_01_01
          #
          #   @return [Onlyfans::Models::QueueCountResponse::Data::List::Const2025_01_01, nil]
          optional :number_2025_01_01,
                   -> { Onlyfans::Models::QueueCountResponse::Data::List::Const2025_01_01 },
                   api_name: :"2025-01-01"

          # @!attribute number_2025_01_02
          #
          #   @return [Onlyfans::Models::QueueCountResponse::Data::List::Const2025_01_02, nil]
          optional :number_2025_01_02,
                   -> { Onlyfans::Models::QueueCountResponse::Data::List::Const2025_01_02 },
                   api_name: :"2025-01-02"

          # @!method initialize(number_2025_01_01: nil, number_2025_01_02: nil)
          #   @param number_2025_01_01 [Onlyfans::Models::QueueCountResponse::Data::List::Const2025_01_01]
          #   @param number_2025_01_02 [Onlyfans::Models::QueueCountResponse::Data::List::Const2025_01_02]

          # @see Onlyfans::Models::QueueCountResponse::Data::List#number_2025_01_01
          class Const2025_01_01 < Onlyfans::Internal::Type::BaseModel
            # @!attribute post
            #
            #   @return [Integer, nil]
            optional :post, Integer

            # @!method initialize(post: nil)
            #   @param post [Integer]
          end

          # @see Onlyfans::Models::QueueCountResponse::Data::List#number_2025_01_02
          class Const2025_01_02 < Onlyfans::Internal::Type::BaseModel
            # @!attribute chat
            #
            #   @return [Integer, nil]
            optional :chat, Integer

            # @!attribute post
            #
            #   @return [Integer, nil]
            optional :post, Integer

            # @!method initialize(chat: nil, post: nil)
            #   @param chat [Integer]
            #   @param post [Integer]
          end
        end
      end
    end
  end
end
