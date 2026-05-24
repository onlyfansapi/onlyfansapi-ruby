# frozen_string_literal: true

module Onlyfansapi
  module Models
    # @see Onlyfansapi::Resources::Queue#count
    class QueueCountResponse < Onlyfansapi::Internal::Type::BaseModel
      # @!attribute _meta
      #
      #   @return [Onlyfansapi::Models::QueueCountResponse::Meta, nil]
      optional :_meta, -> { Onlyfansapi::Models::QueueCountResponse::Meta }

      # @!attribute data
      #
      #   @return [Onlyfansapi::Models::QueueCountResponse::Data, nil]
      optional :data, -> { Onlyfansapi::Models::QueueCountResponse::Data }

      # @!method initialize(_meta: nil, data: nil)
      #   @param _meta [Onlyfansapi::Models::QueueCountResponse::Meta]
      #   @param data [Onlyfansapi::Models::QueueCountResponse::Data]

      # @see Onlyfansapi::Models::QueueCountResponse#_meta
      class Meta < Onlyfansapi::Internal::Type::BaseModel
        # @!attribute _cache
        #
        #   @return [Onlyfansapi::Models::QueueCountResponse::Meta::Cache, nil]
        optional :_cache, -> { Onlyfansapi::Models::QueueCountResponse::Meta::Cache }

        # @!attribute _credits
        #
        #   @return [Onlyfansapi::Models::QueueCountResponse::Meta::Credits, nil]
        optional :_credits, -> { Onlyfansapi::Models::QueueCountResponse::Meta::Credits }

        # @!attribute _rate_limits
        #
        #   @return [Onlyfansapi::Models::QueueCountResponse::Meta::RateLimits, nil]
        optional :_rate_limits, -> { Onlyfansapi::Models::QueueCountResponse::Meta::RateLimits }

        # @!method initialize(_cache: nil, _credits: nil, _rate_limits: nil)
        #   @param _cache [Onlyfansapi::Models::QueueCountResponse::Meta::Cache]
        #   @param _credits [Onlyfansapi::Models::QueueCountResponse::Meta::Credits]
        #   @param _rate_limits [Onlyfansapi::Models::QueueCountResponse::Meta::RateLimits]

        # @see Onlyfansapi::Models::QueueCountResponse::Meta#_cache
        class Cache < Onlyfansapi::Internal::Type::BaseModel
          # @!attribute is_cached
          #
          #   @return [Boolean, nil]
          optional :is_cached, Onlyfansapi::Internal::Type::Boolean

          # @!attribute note
          #
          #   @return [String, nil]
          optional :note, String

          # @!method initialize(is_cached: nil, note: nil)
          #   @param is_cached [Boolean]
          #   @param note [String]
        end

        # @see Onlyfansapi::Models::QueueCountResponse::Meta#_credits
        class Credits < Onlyfansapi::Internal::Type::BaseModel
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

        # @see Onlyfansapi::Models::QueueCountResponse::Meta#_rate_limits
        class RateLimits < Onlyfansapi::Internal::Type::BaseModel
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

      # @see Onlyfansapi::Models::QueueCountResponse#data
      class Data < Onlyfansapi::Internal::Type::BaseModel
        # @!attribute list
        #
        #   @return [Onlyfansapi::Models::QueueCountResponse::Data::List, nil]
        optional :list, -> { Onlyfansapi::Models::QueueCountResponse::Data::List }

        # @!attribute sync_in_process
        #
        #   @return [Boolean, nil]
        optional :sync_in_process, Onlyfansapi::Internal::Type::Boolean, api_name: :syncInProcess

        # @!method initialize(list: nil, sync_in_process: nil)
        #   @param list [Onlyfansapi::Models::QueueCountResponse::Data::List]
        #   @param sync_in_process [Boolean]

        # @see Onlyfansapi::Models::QueueCountResponse::Data#list
        class List < Onlyfansapi::Internal::Type::BaseModel
          # @!attribute number_2025_01_01
          #
          #   @return [Onlyfansapi::Models::QueueCountResponse::Data::List::Const2025_01_01, nil]
          optional :number_2025_01_01,
                   -> { Onlyfansapi::Models::QueueCountResponse::Data::List::Const2025_01_01 },
                   api_name: :"2025-01-01"

          # @!attribute number_2025_01_02
          #
          #   @return [Onlyfansapi::Models::QueueCountResponse::Data::List::Const2025_01_02, nil]
          optional :number_2025_01_02,
                   -> { Onlyfansapi::Models::QueueCountResponse::Data::List::Const2025_01_02 },
                   api_name: :"2025-01-02"

          # @!method initialize(number_2025_01_01: nil, number_2025_01_02: nil)
          #   @param number_2025_01_01 [Onlyfansapi::Models::QueueCountResponse::Data::List::Const2025_01_01]
          #   @param number_2025_01_02 [Onlyfansapi::Models::QueueCountResponse::Data::List::Const2025_01_02]

          # @see Onlyfansapi::Models::QueueCountResponse::Data::List#number_2025_01_01
          class Const2025_01_01 < Onlyfansapi::Internal::Type::BaseModel
            # @!attribute post
            #
            #   @return [Integer, nil]
            optional :post, Integer

            # @!method initialize(post: nil)
            #   @param post [Integer]
          end

          # @see Onlyfansapi::Models::QueueCountResponse::Data::List#number_2025_01_02
          class Const2025_01_02 < Onlyfansapi::Internal::Type::BaseModel
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
