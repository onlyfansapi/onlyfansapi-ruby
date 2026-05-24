# typed: strong

module Onlyfansapi
  module Models
    class DataExportListResponse < Onlyfansapi::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Onlyfansapi::Models::DataExportListResponse,
            Onlyfansapi::Internal::AnyHash
          )
        end

      sig do
        returns(T.nilable(Onlyfansapi::Models::DataExportListResponse::Meta))
      end
      attr_reader :_meta

      sig do
        params(
          _meta: Onlyfansapi::Models::DataExportListResponse::Meta::OrHash
        ).void
      end
      attr_writer :_meta

      sig do
        returns(T.nilable(Onlyfansapi::Models::DataExportListResponse::Data))
      end
      attr_reader :data

      sig do
        params(
          data: Onlyfansapi::Models::DataExportListResponse::Data::OrHash
        ).void
      end
      attr_writer :data

      sig do
        params(
          _meta: Onlyfansapi::Models::DataExportListResponse::Meta::OrHash,
          data: Onlyfansapi::Models::DataExportListResponse::Data::OrHash
        ).returns(T.attached_class)
      end
      def self.new(_meta: nil, data: nil)
      end

      sig do
        override.returns(
          {
            _meta: Onlyfansapi::Models::DataExportListResponse::Meta,
            data: Onlyfansapi::Models::DataExportListResponse::Data
          }
        )
      end
      def to_hash
      end

      class Meta < Onlyfansapi::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Onlyfansapi::Models::DataExportListResponse::Meta,
              Onlyfansapi::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.nilable(Onlyfansapi::Models::DataExportListResponse::Meta::Cache)
          )
        end
        attr_reader :_cache

        sig do
          params(
            _cache:
              Onlyfansapi::Models::DataExportListResponse::Meta::Cache::OrHash
          ).void
        end
        attr_writer :_cache

        sig do
          returns(
            T.nilable(
              Onlyfansapi::Models::DataExportListResponse::Meta::Credits
            )
          )
        end
        attr_reader :_credits

        sig do
          params(
            _credits:
              Onlyfansapi::Models::DataExportListResponse::Meta::Credits::OrHash
          ).void
        end
        attr_writer :_credits

        sig do
          returns(
            T.nilable(
              Onlyfansapi::Models::DataExportListResponse::Meta::RateLimits
            )
          )
        end
        attr_reader :_rate_limits

        sig do
          params(
            _rate_limits:
              Onlyfansapi::Models::DataExportListResponse::Meta::RateLimits::OrHash
          ).void
        end
        attr_writer :_rate_limits

        sig do
          params(
            _cache:
              Onlyfansapi::Models::DataExportListResponse::Meta::Cache::OrHash,
            _credits:
              Onlyfansapi::Models::DataExportListResponse::Meta::Credits::OrHash,
            _rate_limits:
              Onlyfansapi::Models::DataExportListResponse::Meta::RateLimits::OrHash
          ).returns(T.attached_class)
        end
        def self.new(_cache: nil, _credits: nil, _rate_limits: nil)
        end

        sig do
          override.returns(
            {
              _cache: Onlyfansapi::Models::DataExportListResponse::Meta::Cache,
              _credits:
                Onlyfansapi::Models::DataExportListResponse::Meta::Credits,
              _rate_limits:
                Onlyfansapi::Models::DataExportListResponse::Meta::RateLimits
            }
          )
        end
        def to_hash
        end

        class Cache < Onlyfansapi::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Onlyfansapi::Models::DataExportListResponse::Meta::Cache,
                Onlyfansapi::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :is_cached

          sig { params(is_cached: T::Boolean).void }
          attr_writer :is_cached

          sig { returns(T.nilable(String)) }
          attr_reader :note

          sig { params(note: String).void }
          attr_writer :note

          sig do
            params(is_cached: T::Boolean, note: String).returns(
              T.attached_class
            )
          end
          def self.new(is_cached: nil, note: nil)
          end

          sig { override.returns({ is_cached: T::Boolean, note: String }) }
          def to_hash
          end
        end

        class Credits < Onlyfansapi::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Onlyfansapi::Models::DataExportListResponse::Meta::Credits,
                Onlyfansapi::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(Integer)) }
          attr_reader :balance

          sig { params(balance: Integer).void }
          attr_writer :balance

          sig { returns(T.nilable(String)) }
          attr_reader :note

          sig { params(note: String).void }
          attr_writer :note

          sig { returns(T.nilable(Integer)) }
          attr_reader :used

          sig { params(used: Integer).void }
          attr_writer :used

          sig do
            params(balance: Integer, note: String, used: Integer).returns(
              T.attached_class
            )
          end
          def self.new(balance: nil, note: nil, used: nil)
          end

          sig do
            override.returns({ balance: Integer, note: String, used: Integer })
          end
          def to_hash
          end
        end

        class RateLimits < Onlyfansapi::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Onlyfansapi::Models::DataExportListResponse::Meta::RateLimits,
                Onlyfansapi::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(String)) }
          attr_accessor :limit_day

          sig { returns(T.nilable(Integer)) }
          attr_reader :limit_minute

          sig { params(limit_minute: Integer).void }
          attr_writer :limit_minute

          sig { returns(T.nilable(String)) }
          attr_reader :notice

          sig { params(notice: String).void }
          attr_writer :notice

          sig { returns(T.nilable(String)) }
          attr_accessor :remaining_day

          sig { returns(T.nilable(Integer)) }
          attr_reader :remaining_minute

          sig { params(remaining_minute: Integer).void }
          attr_writer :remaining_minute

          sig do
            params(
              limit_day: T.nilable(String),
              limit_minute: Integer,
              notice: String,
              remaining_day: T.nilable(String),
              remaining_minute: Integer
            ).returns(T.attached_class)
          end
          def self.new(
            limit_day: nil,
            limit_minute: nil,
            notice: nil,
            remaining_day: nil,
            remaining_minute: nil
          )
          end

          sig do
            override.returns(
              {
                limit_day: T.nilable(String),
                limit_minute: Integer,
                notice: String,
                remaining_day: T.nilable(String),
                remaining_minute: Integer
              }
            )
          end
          def to_hash
          end
        end
      end

      class Data < Onlyfansapi::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Onlyfansapi::Models::DataExportListResponse::Data,
              Onlyfansapi::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.nilable(
              T::Array[Onlyfansapi::Models::DataExportListResponse::Data::Data]
            )
          )
        end
        attr_reader :data

        sig do
          params(
            data:
              T::Array[
                Onlyfansapi::Models::DataExportListResponse::Data::Data::OrHash
              ]
          ).void
        end
        attr_writer :data

        sig do
          returns(
            T.nilable(Onlyfansapi::Models::DataExportListResponse::Data::Meta)
          )
        end
        attr_reader :meta

        sig do
          params(
            meta:
              Onlyfansapi::Models::DataExportListResponse::Data::Meta::OrHash
          ).void
        end
        attr_writer :meta

        sig do
          params(
            data:
              T::Array[
                Onlyfansapi::Models::DataExportListResponse::Data::Data::OrHash
              ],
            meta:
              Onlyfansapi::Models::DataExportListResponse::Data::Meta::OrHash
          ).returns(T.attached_class)
        end
        def self.new(data: nil, meta: nil)
        end

        sig do
          override.returns(
            {
              data:
                T::Array[
                  Onlyfansapi::Models::DataExportListResponse::Data::Data
                ],
              meta: Onlyfansapi::Models::DataExportListResponse::Data::Meta
            }
          )
        end
        def to_hash
        end

        class Data < Onlyfansapi::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Onlyfansapi::Models::DataExportListResponse::Data::Data,
                Onlyfansapi::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(String)) }
          attr_reader :id

          sig { params(id: String).void }
          attr_writer :id

          sig do
            returns(
              T.nilable(
                T::Array[
                  Onlyfansapi::Models::DataExportListResponse::Data::Data::Account
                ]
              )
            )
          end
          attr_reader :accounts

          sig do
            params(
              accounts:
                T::Array[
                  Onlyfansapi::Models::DataExportListResponse::Data::Data::Account::OrHash
                ]
            ).void
          end
          attr_writer :accounts

          sig { returns(T.nilable(String)) }
          attr_reader :completed_at

          sig { params(completed_at: String).void }
          attr_writer :completed_at

          sig { returns(T.nilable(String)) }
          attr_reader :created_at

          sig { params(created_at: String).void }
          attr_writer :created_at

          sig { returns(T.nilable(Integer)) }
          attr_reader :credit_cost

          sig { params(credit_cost: Integer).void }
          attr_writer :credit_cost

          sig { returns(T.nilable(String)) }
          attr_reader :download_url

          sig { params(download_url: String).void }
          attr_writer :download_url

          sig { returns(T.nilable(String)) }
          attr_reader :download_url_expires_at

          sig { params(download_url_expires_at: String).void }
          attr_writer :download_url_expires_at

          sig { returns(T.nilable(String)) }
          attr_reader :end_date

          sig { params(end_date: String).void }
          attr_writer :end_date

          sig { returns(T.nilable(T::Array[String])) }
          attr_reader :export_columns

          sig { params(export_columns: T::Array[String]).void }
          attr_writer :export_columns

          sig { returns(T.nilable(String)) }
          attr_accessor :failed_at

          sig { returns(T.nilable(String)) }
          attr_accessor :failed_reason

          sig { returns(T.nilable(String)) }
          attr_reader :file_type

          sig { params(file_type: String).void }
          attr_writer :file_type

          sig { returns(T.nilable(Integer)) }
          attr_reader :progress_percentage

          sig { params(progress_percentage: Integer).void }
          attr_writer :progress_percentage

          sig { returns(T.nilable(Integer)) }
          attr_reader :rows_processed

          sig { params(rows_processed: Integer).void }
          attr_writer :rows_processed

          sig { returns(T.nilable(String)) }
          attr_reader :start_date

          sig { params(start_date: String).void }
          attr_writer :start_date

          sig { returns(T.nilable(String)) }
          attr_reader :status

          sig { params(status: String).void }
          attr_writer :status

          sig { returns(T.nilable(Integer)) }
          attr_reader :total_rows

          sig { params(total_rows: Integer).void }
          attr_writer :total_rows

          sig { returns(T.nilable(String)) }
          attr_reader :type

          sig { params(type: String).void }
          attr_writer :type

          sig do
            params(
              id: String,
              accounts:
                T::Array[
                  Onlyfansapi::Models::DataExportListResponse::Data::Data::Account::OrHash
                ],
              completed_at: String,
              created_at: String,
              credit_cost: Integer,
              download_url: String,
              download_url_expires_at: String,
              end_date: String,
              export_columns: T::Array[String],
              failed_at: T.nilable(String),
              failed_reason: T.nilable(String),
              file_type: String,
              progress_percentage: Integer,
              rows_processed: Integer,
              start_date: String,
              status: String,
              total_rows: Integer,
              type: String
            ).returns(T.attached_class)
          end
          def self.new(
            id: nil,
            accounts: nil,
            completed_at: nil,
            created_at: nil,
            credit_cost: nil,
            download_url: nil,
            download_url_expires_at: nil,
            end_date: nil,
            export_columns: nil,
            failed_at: nil,
            failed_reason: nil,
            file_type: nil,
            progress_percentage: nil,
            rows_processed: nil,
            start_date: nil,
            status: nil,
            total_rows: nil,
            type: nil
          )
          end

          sig do
            override.returns(
              {
                id: String,
                accounts:
                  T::Array[
                    Onlyfansapi::Models::DataExportListResponse::Data::Data::Account
                  ],
                completed_at: String,
                created_at: String,
                credit_cost: Integer,
                download_url: String,
                download_url_expires_at: String,
                end_date: String,
                export_columns: T::Array[String],
                failed_at: T.nilable(String),
                failed_reason: T.nilable(String),
                file_type: String,
                progress_percentage: Integer,
                rows_processed: Integer,
                start_date: String,
                status: String,
                total_rows: Integer,
                type: String
              }
            )
          end
          def to_hash
          end

          class Account < Onlyfansapi::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Onlyfansapi::Models::DataExportListResponse::Data::Data::Account,
                  Onlyfansapi::Internal::AnyHash
                )
              end

            sig { returns(T.nilable(String)) }
            attr_reader :id

            sig { params(id: String).void }
            attr_writer :id

            sig { returns(T.nilable(String)) }
            attr_reader :display_name

            sig { params(display_name: String).void }
            attr_writer :display_name

            sig do
              params(id: String, display_name: String).returns(T.attached_class)
            end
            def self.new(id: nil, display_name: nil)
            end

            sig { override.returns({ id: String, display_name: String }) }
            def to_hash
            end
          end
        end

        class Meta < Onlyfansapi::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Onlyfansapi::Models::DataExportListResponse::Data::Meta,
                Onlyfansapi::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(Integer)) }
          attr_reader :current_page

          sig { params(current_page: Integer).void }
          attr_writer :current_page

          sig { returns(T.nilable(Integer)) }
          attr_reader :last_page

          sig { params(last_page: Integer).void }
          attr_writer :last_page

          sig { returns(T.nilable(Integer)) }
          attr_reader :per_page

          sig { params(per_page: Integer).void }
          attr_writer :per_page

          sig { returns(T.nilable(Integer)) }
          attr_reader :total

          sig { params(total: Integer).void }
          attr_writer :total

          sig do
            params(
              current_page: Integer,
              last_page: Integer,
              per_page: Integer,
              total: Integer
            ).returns(T.attached_class)
          end
          def self.new(
            current_page: nil,
            last_page: nil,
            per_page: nil,
            total: nil
          )
          end

          sig do
            override.returns(
              {
                current_page: Integer,
                last_page: Integer,
                per_page: Integer,
                total: Integer
              }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
