# frozen_string_literal: true

module Onlyfansapi
  module Models
    # @see Onlyfansapi::Resources::DataExports#retry_
    class DataExportRetryResponse < Onlyfansapi::Internal::Type::BaseModel
      # @!attribute _meta
      #
      #   @return [Onlyfansapi::Models::DataExportRetryResponse::Meta, nil]
      optional :_meta, -> { Onlyfansapi::Models::DataExportRetryResponse::Meta }

      # @!attribute data
      #
      #   @return [Onlyfansapi::Models::DataExportRetryResponse::Data, nil]
      optional :data, -> { Onlyfansapi::Models::DataExportRetryResponse::Data }

      # @!method initialize(_meta: nil, data: nil)
      #   @param _meta [Onlyfansapi::Models::DataExportRetryResponse::Meta]
      #   @param data [Onlyfansapi::Models::DataExportRetryResponse::Data]

      # @see Onlyfansapi::Models::DataExportRetryResponse#_meta
      class Meta < Onlyfansapi::Internal::Type::BaseModel
        # @!attribute _cache
        #
        #   @return [Onlyfansapi::Models::DataExportRetryResponse::Meta::Cache, nil]
        optional :_cache, -> { Onlyfansapi::Models::DataExportRetryResponse::Meta::Cache }

        # @!attribute _credits
        #
        #   @return [Onlyfansapi::Models::DataExportRetryResponse::Meta::Credits, nil]
        optional :_credits, -> { Onlyfansapi::Models::DataExportRetryResponse::Meta::Credits }

        # @!attribute _rate_limits
        #
        #   @return [Onlyfansapi::Models::DataExportRetryResponse::Meta::RateLimits, nil]
        optional :_rate_limits, -> { Onlyfansapi::Models::DataExportRetryResponse::Meta::RateLimits }

        # @!method initialize(_cache: nil, _credits: nil, _rate_limits: nil)
        #   @param _cache [Onlyfansapi::Models::DataExportRetryResponse::Meta::Cache]
        #   @param _credits [Onlyfansapi::Models::DataExportRetryResponse::Meta::Credits]
        #   @param _rate_limits [Onlyfansapi::Models::DataExportRetryResponse::Meta::RateLimits]

        # @see Onlyfansapi::Models::DataExportRetryResponse::Meta#_cache
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

        # @see Onlyfansapi::Models::DataExportRetryResponse::Meta#_credits
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

        # @see Onlyfansapi::Models::DataExportRetryResponse::Meta#_rate_limits
        class RateLimits < Onlyfansapi::Internal::Type::BaseModel
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

      # @see Onlyfansapi::Models::DataExportRetryResponse#data
      class Data < Onlyfansapi::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String, nil]
        optional :id, String

        # @!attribute message
        #
        #   @return [String, nil]
        optional :message, String

        # @!attribute original_id
        #
        #   @return [String, nil]
        optional :original_id, String

        # @!attribute status
        #
        #   @return [String, nil]
        optional :status, String

        # @!attribute type
        #
        #   @return [String, nil]
        optional :type, String

        # @!method initialize(id: nil, message: nil, original_id: nil, status: nil, type: nil)
        #   @param id [String]
        #   @param message [String]
        #   @param original_id [String]
        #   @param status [String]
        #   @param type [String]
      end
    end
  end
end
