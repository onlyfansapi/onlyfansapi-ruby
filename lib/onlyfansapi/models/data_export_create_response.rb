# frozen_string_literal: true

module Onlyfansapi
  module Models
    # @see Onlyfansapi::Resources::DataExports#create
    class DataExportCreateResponse < Onlyfansapi::Internal::Type::BaseModel
      # @!attribute _meta
      #
      #   @return [Onlyfansapi::Models::DataExportCreateResponse::Meta, nil]
      optional :_meta, -> { Onlyfansapi::Models::DataExportCreateResponse::Meta }

      # @!attribute data
      #
      #   @return [Onlyfansapi::Models::DataExportCreateResponse::Data, nil]
      optional :data, -> { Onlyfansapi::Models::DataExportCreateResponse::Data }

      # @!method initialize(_meta: nil, data: nil)
      #   @param _meta [Onlyfansapi::Models::DataExportCreateResponse::Meta]
      #   @param data [Onlyfansapi::Models::DataExportCreateResponse::Data]

      # @see Onlyfansapi::Models::DataExportCreateResponse#_meta
      class Meta < Onlyfansapi::Internal::Type::BaseModel
        # @!attribute _cache
        #
        #   @return [Onlyfansapi::Models::DataExportCreateResponse::Meta::Cache, nil]
        optional :_cache, -> { Onlyfansapi::Models::DataExportCreateResponse::Meta::Cache }

        # @!attribute _credits
        #
        #   @return [Onlyfansapi::Models::DataExportCreateResponse::Meta::Credits, nil]
        optional :_credits, -> { Onlyfansapi::Models::DataExportCreateResponse::Meta::Credits }

        # @!attribute _rate_limits
        #
        #   @return [Onlyfansapi::Models::DataExportCreateResponse::Meta::RateLimits, nil]
        optional :_rate_limits, -> { Onlyfansapi::Models::DataExportCreateResponse::Meta::RateLimits }

        # @!method initialize(_cache: nil, _credits: nil, _rate_limits: nil)
        #   @param _cache [Onlyfansapi::Models::DataExportCreateResponse::Meta::Cache]
        #   @param _credits [Onlyfansapi::Models::DataExportCreateResponse::Meta::Credits]
        #   @param _rate_limits [Onlyfansapi::Models::DataExportCreateResponse::Meta::RateLimits]

        # @see Onlyfansapi::Models::DataExportCreateResponse::Meta#_cache
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

        # @see Onlyfansapi::Models::DataExportCreateResponse::Meta#_credits
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

        # @see Onlyfansapi::Models::DataExportCreateResponse::Meta#_rate_limits
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

      # @see Onlyfansapi::Models::DataExportCreateResponse#data
      class Data < Onlyfansapi::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String, nil]
        optional :id, String

        # @!attribute created_at
        #
        #   @return [String, nil]
        optional :created_at, String

        # @!attribute credit_calculation_note
        #
        #   @return [String, nil]
        optional :credit_calculation_note, String

        # @!attribute end_date
        #
        #   @return [String, nil]
        optional :end_date, String

        # @!attribute file_type
        #
        #   @return [String, nil]
        optional :file_type, String

        # @!attribute requires_scraping
        #
        #   @return [Boolean, nil]
        optional :requires_scraping, Onlyfansapi::Internal::Type::Boolean

        # @!attribute start_date
        #
        #   @return [String, nil]
        optional :start_date, String

        # @!attribute status
        #
        #   @return [String, nil]
        optional :status, String

        # @!attribute type
        #
        #   @return [String, nil]
        optional :type, String

        # @!method initialize(id: nil, created_at: nil, credit_calculation_note: nil, end_date: nil, file_type: nil, requires_scraping: nil, start_date: nil, status: nil, type: nil)
        #   @param id [String]
        #   @param created_at [String]
        #   @param credit_calculation_note [String]
        #   @param end_date [String]
        #   @param file_type [String]
        #   @param requires_scraping [Boolean]
        #   @param start_date [String]
        #   @param status [String]
        #   @param type [String]
      end
    end
  end
end
