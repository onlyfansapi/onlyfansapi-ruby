# frozen_string_literal: true

module Onlyfansapi
  module Models
    # @see Onlyfansapi::Resources::DataExports#list
    class DataExportListResponse < Onlyfansapi::Internal::Type::BaseModel
      # @!attribute _meta
      #
      #   @return [Onlyfansapi::Models::DataExportListResponse::Meta, nil]
      optional :_meta, -> { Onlyfansapi::Models::DataExportListResponse::Meta }

      # @!attribute data
      #
      #   @return [Onlyfansapi::Models::DataExportListResponse::Data, nil]
      optional :data, -> { Onlyfansapi::Models::DataExportListResponse::Data }

      # @!method initialize(_meta: nil, data: nil)
      #   @param _meta [Onlyfansapi::Models::DataExportListResponse::Meta]
      #   @param data [Onlyfansapi::Models::DataExportListResponse::Data]

      # @see Onlyfansapi::Models::DataExportListResponse#_meta
      class Meta < Onlyfansapi::Internal::Type::BaseModel
        # @!attribute _cache
        #
        #   @return [Onlyfansapi::Models::DataExportListResponse::Meta::Cache, nil]
        optional :_cache, -> { Onlyfansapi::Models::DataExportListResponse::Meta::Cache }

        # @!attribute _credits
        #
        #   @return [Onlyfansapi::Models::DataExportListResponse::Meta::Credits, nil]
        optional :_credits, -> { Onlyfansapi::Models::DataExportListResponse::Meta::Credits }

        # @!attribute _rate_limits
        #
        #   @return [Onlyfansapi::Models::DataExportListResponse::Meta::RateLimits, nil]
        optional :_rate_limits, -> { Onlyfansapi::Models::DataExportListResponse::Meta::RateLimits }

        # @!method initialize(_cache: nil, _credits: nil, _rate_limits: nil)
        #   @param _cache [Onlyfansapi::Models::DataExportListResponse::Meta::Cache]
        #   @param _credits [Onlyfansapi::Models::DataExportListResponse::Meta::Credits]
        #   @param _rate_limits [Onlyfansapi::Models::DataExportListResponse::Meta::RateLimits]

        # @see Onlyfansapi::Models::DataExportListResponse::Meta#_cache
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

        # @see Onlyfansapi::Models::DataExportListResponse::Meta#_credits
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

        # @see Onlyfansapi::Models::DataExportListResponse::Meta#_rate_limits
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

      # @see Onlyfansapi::Models::DataExportListResponse#data
      class Data < Onlyfansapi::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Array<Onlyfansapi::Models::DataExportListResponse::Data::Data>, nil]
        optional :data,
                 -> { Onlyfansapi::Internal::Type::ArrayOf[Onlyfansapi::Models::DataExportListResponse::Data::Data] }

        # @!attribute meta
        #
        #   @return [Onlyfansapi::Models::DataExportListResponse::Data::Meta, nil]
        optional :meta, -> { Onlyfansapi::Models::DataExportListResponse::Data::Meta }

        # @!method initialize(data: nil, meta: nil)
        #   @param data [Array<Onlyfansapi::Models::DataExportListResponse::Data::Data>]
        #   @param meta [Onlyfansapi::Models::DataExportListResponse::Data::Meta]

        class Data < Onlyfansapi::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String, nil]
          optional :id, String

          # @!attribute accounts
          #
          #   @return [Array<Onlyfansapi::Models::DataExportListResponse::Data::Data::Account>, nil]
          optional :accounts,
                   -> { Onlyfansapi::Internal::Type::ArrayOf[Onlyfansapi::Models::DataExportListResponse::Data::Data::Account] }

          # @!attribute completed_at
          #
          #   @return [String, nil]
          optional :completed_at, String

          # @!attribute created_at
          #
          #   @return [String, nil]
          optional :created_at, String

          # @!attribute credit_cost
          #
          #   @return [Integer, nil]
          optional :credit_cost, Integer

          # @!attribute download_url
          #
          #   @return [String, nil]
          optional :download_url, String

          # @!attribute download_url_expires_at
          #
          #   @return [String, nil]
          optional :download_url_expires_at, String

          # @!attribute end_date
          #
          #   @return [String, nil]
          optional :end_date, String

          # @!attribute export_columns
          #
          #   @return [Array<String>, nil]
          optional :export_columns, Onlyfansapi::Internal::Type::ArrayOf[String]

          # @!attribute failed_at
          #
          #   @return [String, nil]
          optional :failed_at, String, nil?: true

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

          # @!method initialize(id: nil, accounts: nil, completed_at: nil, created_at: nil, credit_cost: nil, download_url: nil, download_url_expires_at: nil, end_date: nil, export_columns: nil, failed_at: nil, failed_reason: nil, file_type: nil, progress_percentage: nil, rows_processed: nil, start_date: nil, status: nil, total_rows: nil, type: nil)
          #   @param id [String]
          #   @param accounts [Array<Onlyfansapi::Models::DataExportListResponse::Data::Data::Account>]
          #   @param completed_at [String]
          #   @param created_at [String]
          #   @param credit_cost [Integer]
          #   @param download_url [String]
          #   @param download_url_expires_at [String]
          #   @param end_date [String]
          #   @param export_columns [Array<String>]
          #   @param failed_at [String, nil]
          #   @param failed_reason [String, nil]
          #   @param file_type [String]
          #   @param progress_percentage [Integer]
          #   @param rows_processed [Integer]
          #   @param start_date [String]
          #   @param status [String]
          #   @param total_rows [Integer]
          #   @param type [String]

          class Account < Onlyfansapi::Internal::Type::BaseModel
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

        # @see Onlyfansapi::Models::DataExportListResponse::Data#meta
        class Meta < Onlyfansapi::Internal::Type::BaseModel
          # @!attribute current_page
          #
          #   @return [Integer, nil]
          optional :current_page, Integer

          # @!attribute last_page
          #
          #   @return [Integer, nil]
          optional :last_page, Integer

          # @!attribute per_page
          #
          #   @return [Integer, nil]
          optional :per_page, Integer

          # @!attribute total
          #
          #   @return [Integer, nil]
          optional :total, Integer

          # @!method initialize(current_page: nil, last_page: nil, per_page: nil, total: nil)
          #   @param current_page [Integer]
          #   @param last_page [Integer]
          #   @param per_page [Integer]
          #   @param total [Integer]
        end
      end
    end
  end
end
