# frozen_string_literal: true

module Onlyfans
  module Models
    # @see Onlyfans::Resources::DataExports#list
    class DataExportListResponse < Onlyfans::Internal::Type::BaseModel
      # @!attribute _meta
      #
      #   @return [Onlyfans::Models::DataExportListResponse::Meta, nil]
      optional :_meta, -> { Onlyfans::Models::DataExportListResponse::Meta }

      # @!attribute data
      #
      #   @return [Onlyfans::Models::DataExportListResponse::Data, nil]
      optional :data, -> { Onlyfans::Models::DataExportListResponse::Data }

      # @!method initialize(_meta: nil, data: nil)
      #   @param _meta [Onlyfans::Models::DataExportListResponse::Meta]
      #   @param data [Onlyfans::Models::DataExportListResponse::Data]

      # @see Onlyfans::Models::DataExportListResponse#_meta
      class Meta < Onlyfans::Internal::Type::BaseModel
        # @!attribute _cache
        #
        #   @return [Onlyfans::Models::DataExportListResponse::Meta::Cache, nil]
        optional :_cache, -> { Onlyfans::Models::DataExportListResponse::Meta::Cache }

        # @!attribute _credits
        #
        #   @return [Onlyfans::Models::DataExportListResponse::Meta::Credits, nil]
        optional :_credits, -> { Onlyfans::Models::DataExportListResponse::Meta::Credits }

        # @!attribute _rate_limits
        #
        #   @return [Onlyfans::Models::DataExportListResponse::Meta::RateLimits, nil]
        optional :_rate_limits, -> { Onlyfans::Models::DataExportListResponse::Meta::RateLimits }

        # @!method initialize(_cache: nil, _credits: nil, _rate_limits: nil)
        #   @param _cache [Onlyfans::Models::DataExportListResponse::Meta::Cache]
        #   @param _credits [Onlyfans::Models::DataExportListResponse::Meta::Credits]
        #   @param _rate_limits [Onlyfans::Models::DataExportListResponse::Meta::RateLimits]

        # @see Onlyfans::Models::DataExportListResponse::Meta#_cache
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

        # @see Onlyfans::Models::DataExportListResponse::Meta#_credits
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

        # @see Onlyfans::Models::DataExportListResponse::Meta#_rate_limits
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

      # @see Onlyfans::Models::DataExportListResponse#data
      class Data < Onlyfans::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Array<Onlyfans::Models::DataExportListResponse::Data::Data>, nil]
        optional :data,
                 -> { Onlyfans::Internal::Type::ArrayOf[Onlyfans::Models::DataExportListResponse::Data::Data] }

        # @!attribute meta
        #
        #   @return [Onlyfans::Models::DataExportListResponse::Data::Meta, nil]
        optional :meta, -> { Onlyfans::Models::DataExportListResponse::Data::Meta }

        # @!method initialize(data: nil, meta: nil)
        #   @param data [Array<Onlyfans::Models::DataExportListResponse::Data::Data>]
        #   @param meta [Onlyfans::Models::DataExportListResponse::Data::Meta]

        class Data < Onlyfans::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String, nil]
          optional :id, String

          # @!attribute accounts
          #
          #   @return [Array<Onlyfans::Models::DataExportListResponse::Data::Data::Account>, nil]
          optional :accounts,
                   -> { Onlyfans::Internal::Type::ArrayOf[Onlyfans::Models::DataExportListResponse::Data::Data::Account] }

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
          optional :export_columns, Onlyfans::Internal::Type::ArrayOf[String]

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
          #   @param accounts [Array<Onlyfans::Models::DataExportListResponse::Data::Data::Account>]
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

        # @see Onlyfans::Models::DataExportListResponse::Data#meta
        class Meta < Onlyfans::Internal::Type::BaseModel
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
