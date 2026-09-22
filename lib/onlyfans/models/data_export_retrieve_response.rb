# frozen_string_literal: true

module Onlyfans
  module Models
    # @see Onlyfans::Resources::DataExports#retrieve
    class DataExportRetrieveResponse < Onlyfans::Internal::Type::BaseModel
      # @!attribute _meta
      #
      #   @return [Onlyfans::Models::DataExportRetrieveResponse::Meta, nil]
      optional :_meta, -> { Onlyfans::Models::DataExportRetrieveResponse::Meta }

      # @!attribute data
      #
      #   @return [Onlyfans::Models::DataExportRetrieveResponse::Data, nil]
      optional :data, -> { Onlyfans::Models::DataExportRetrieveResponse::Data }

      # @!method initialize(_meta: nil, data: nil)
      #   @param _meta [Onlyfans::Models::DataExportRetrieveResponse::Meta]
      #   @param data [Onlyfans::Models::DataExportRetrieveResponse::Data]

      # @see Onlyfans::Models::DataExportRetrieveResponse#_meta
      class Meta < Onlyfans::Internal::Type::BaseModel
        # @!attribute _cache
        #
        #   @return [Onlyfans::Models::DataExportRetrieveResponse::Meta::Cache, nil]
        optional :_cache, -> { Onlyfans::Models::DataExportRetrieveResponse::Meta::Cache }

        # @!attribute _credits
        #
        #   @return [Onlyfans::Models::DataExportRetrieveResponse::Meta::Credits, nil]
        optional :_credits, -> { Onlyfans::Models::DataExportRetrieveResponse::Meta::Credits }

        # @!attribute _rate_limits
        #
        #   @return [Onlyfans::Models::DataExportRetrieveResponse::Meta::RateLimits, nil]
        optional :_rate_limits, -> { Onlyfans::Models::DataExportRetrieveResponse::Meta::RateLimits }

        # @!method initialize(_cache: nil, _credits: nil, _rate_limits: nil)
        #   @param _cache [Onlyfans::Models::DataExportRetrieveResponse::Meta::Cache]
        #   @param _credits [Onlyfans::Models::DataExportRetrieveResponse::Meta::Credits]
        #   @param _rate_limits [Onlyfans::Models::DataExportRetrieveResponse::Meta::RateLimits]

        # @see Onlyfans::Models::DataExportRetrieveResponse::Meta#_cache
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

        # @see Onlyfans::Models::DataExportRetrieveResponse::Meta#_credits
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

        # @see Onlyfans::Models::DataExportRetrieveResponse::Meta#_rate_limits
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

      # @see Onlyfans::Models::DataExportRetrieveResponse#data
      class Data < Onlyfans::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String, nil]
        optional :id, String

        # @!attribute accounts
        #
        #   @return [Array<Onlyfans::Models::DataExportRetrieveResponse::Data::Account>, nil]
        optional :accounts,
                 -> { Onlyfans::Internal::Type::ArrayOf[Onlyfans::Models::DataExportRetrieveResponse::Data::Account] }

        # @!attribute completed_at
        #
        #   @return [String, nil]
        optional :completed_at, String, nil?: true

        # @!attribute created_at
        #
        #   @return [String, nil]
        optional :created_at, String

        # @!attribute credit_cost
        #
        #   @return [Integer, nil]
        optional :credit_cost, Integer

        # @!attribute end_date
        #
        #   @return [String, nil]
        optional :end_date, String

        # @!attribute export_columns
        #
        #   @return [Array<String>, nil]
        optional :export_columns, Onlyfans::Internal::Type::ArrayOf[String]

        # @!attribute failed_at
        #
        #   @return [String, nil]
        optional :failed_at, String, nil?: true

        # @!attribute failed_downloads
        #
        #   @return [Integer, nil]
        optional :failed_downloads, Integer

        # @!attribute failed_reason
        #
        #   @return [String, nil]
        optional :failed_reason, String, nil?: true

        # @!attribute file_type
        #
        #   @return [String, nil]
        optional :file_type, String

        # @!attribute progress_percentage
        #
        #   @return [Integer, nil]
        optional :progress_percentage, Integer

        # @!attribute rows_processed
        #
        #   @return [Integer, nil]
        optional :rows_processed, Integer

        # @!attribute start_date
        #
        #   @return [String, nil]
        optional :start_date, String

        # @!attribute status
        #
        #   @return [String, nil]
        optional :status, String

        # @!attribute total_rows
        #
        #   @return [Integer, nil]
        optional :total_rows, Integer

        # @!attribute type
        #
        #   @return [String, nil]
        optional :type, String

        # @!method initialize(id: nil, accounts: nil, completed_at: nil, created_at: nil, credit_cost: nil, end_date: nil, export_columns: nil, failed_at: nil, failed_downloads: nil, failed_reason: nil, file_type: nil, progress_percentage: nil, rows_processed: nil, start_date: nil, status: nil, total_rows: nil, type: nil)
        #   @param id [String]
        #   @param accounts [Array<Onlyfans::Models::DataExportRetrieveResponse::Data::Account>]
        #   @param completed_at [String, nil]
        #   @param created_at [String]
        #   @param credit_cost [Integer]
        #   @param end_date [String]
        #   @param export_columns [Array<String>]
        #   @param failed_at [String, nil]
        #   @param failed_downloads [Integer]
        #   @param failed_reason [String, nil]
        #   @param file_type [String]
        #   @param progress_percentage [Integer]
        #   @param rows_processed [Integer]
        #   @param start_date [String]
        #   @param status [String]
        #   @param total_rows [Integer]
        #   @param type [String]

        class Account < Onlyfans::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String, nil]
          optional :id, String

          # @!attribute display_name
          #
          #   @return [String, nil]
          optional :display_name, String

          # @!method initialize(id: nil, display_name: nil)
          #   @param id [String]
          #   @param display_name [String]
        end
      end
    end
  end
end
