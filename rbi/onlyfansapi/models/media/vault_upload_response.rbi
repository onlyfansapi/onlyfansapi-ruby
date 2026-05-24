# typed: strong

module Onlyfansapi
  module Models
    module Media
      class VaultUploadResponse < Onlyfansapi::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Onlyfansapi::Models::Media::VaultUploadResponse,
              Onlyfansapi::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.nilable(Onlyfansapi::Models::Media::VaultUploadResponse::Meta)
          )
        end
        attr_reader :_meta

        sig do
          params(
            _meta: Onlyfansapi::Models::Media::VaultUploadResponse::Meta::OrHash
          ).void
        end
        attr_writer :_meta

        sig do
          returns(
            T.nilable(Onlyfansapi::Models::Media::VaultUploadResponse::Data)
          )
        end
        attr_reader :data

        sig do
          params(
            data: Onlyfansapi::Models::Media::VaultUploadResponse::Data::OrHash
          ).void
        end
        attr_writer :data

        sig do
          params(
            _meta:
              Onlyfansapi::Models::Media::VaultUploadResponse::Meta::OrHash,
            data: Onlyfansapi::Models::Media::VaultUploadResponse::Data::OrHash
          ).returns(T.attached_class)
        end
        def self.new(_meta: nil, data: nil)
        end

        sig do
          override.returns(
            {
              _meta: Onlyfansapi::Models::Media::VaultUploadResponse::Meta,
              data: Onlyfansapi::Models::Media::VaultUploadResponse::Data
            }
          )
        end
        def to_hash
        end

        class Meta < Onlyfansapi::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Onlyfansapi::Models::Media::VaultUploadResponse::Meta,
                Onlyfansapi::Internal::AnyHash
              )
            end

          sig do
            returns(
              T.nilable(
                Onlyfansapi::Models::Media::VaultUploadResponse::Meta::Cache
              )
            )
          end
          attr_reader :_cache

          sig do
            params(
              _cache:
                Onlyfansapi::Models::Media::VaultUploadResponse::Meta::Cache::OrHash
            ).void
          end
          attr_writer :_cache

          sig do
            returns(
              T.nilable(
                Onlyfansapi::Models::Media::VaultUploadResponse::Meta::Credits
              )
            )
          end
          attr_reader :_credits

          sig do
            params(
              _credits:
                Onlyfansapi::Models::Media::VaultUploadResponse::Meta::Credits::OrHash
            ).void
          end
          attr_writer :_credits

          sig do
            returns(
              T.nilable(
                Onlyfansapi::Models::Media::VaultUploadResponse::Meta::RateLimits
              )
            )
          end
          attr_reader :_rate_limits

          sig do
            params(
              _rate_limits:
                Onlyfansapi::Models::Media::VaultUploadResponse::Meta::RateLimits::OrHash
            ).void
          end
          attr_writer :_rate_limits

          sig do
            params(
              _cache:
                Onlyfansapi::Models::Media::VaultUploadResponse::Meta::Cache::OrHash,
              _credits:
                Onlyfansapi::Models::Media::VaultUploadResponse::Meta::Credits::OrHash,
              _rate_limits:
                Onlyfansapi::Models::Media::VaultUploadResponse::Meta::RateLimits::OrHash
            ).returns(T.attached_class)
          end
          def self.new(_cache: nil, _credits: nil, _rate_limits: nil)
          end

          sig do
            override.returns(
              {
                _cache:
                  Onlyfansapi::Models::Media::VaultUploadResponse::Meta::Cache,
                _credits:
                  Onlyfansapi::Models::Media::VaultUploadResponse::Meta::Credits,
                _rate_limits:
                  Onlyfansapi::Models::Media::VaultUploadResponse::Meta::RateLimits
              }
            )
          end
          def to_hash
          end

          class Cache < Onlyfansapi::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Onlyfansapi::Models::Media::VaultUploadResponse::Meta::Cache,
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
                  Onlyfansapi::Models::Media::VaultUploadResponse::Meta::Credits,
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
              override.returns(
                { balance: Integer, note: String, used: Integer }
              )
            end
            def to_hash
            end
          end

          class RateLimits < Onlyfansapi::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Onlyfansapi::Models::Media::VaultUploadResponse::Meta::RateLimits,
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
            attr_accessor :remaining_day

            sig { returns(T.nilable(Integer)) }
            attr_reader :remaining_minute

            sig { params(remaining_minute: Integer).void }
            attr_writer :remaining_minute

            sig do
              params(
                limit_day: T.nilable(String),
                limit_minute: Integer,
                remaining_day: T.nilable(String),
                remaining_minute: Integer
              ).returns(T.attached_class)
            end
            def self.new(
              limit_day: nil,
              limit_minute: nil,
              remaining_day: nil,
              remaining_minute: nil
            )
            end

            sig do
              override.returns(
                {
                  limit_day: T.nilable(String),
                  limit_minute: Integer,
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
                Onlyfansapi::Models::Media::VaultUploadResponse::Data,
                Onlyfansapi::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(Integer)) }
          attr_reader :id

          sig { params(id: Integer).void }
          attr_writer :id

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :can_view

          sig { params(can_view: T::Boolean).void }
          attr_writer :can_view

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :converted_to_video

          sig { params(converted_to_video: T::Boolean).void }
          attr_writer :converted_to_video

          sig { returns(T.nilable(String)) }
          attr_reader :created_at

          sig { params(created_at: String).void }
          attr_writer :created_at

          sig { returns(T.nilable(Integer)) }
          attr_reader :duration

          sig { params(duration: Integer).void }
          attr_writer :duration

          sig do
            returns(
              T.nilable(
                Onlyfansapi::Models::Media::VaultUploadResponse::Data::Files
              )
            )
          end
          attr_reader :files

          sig do
            params(
              files:
                Onlyfansapi::Models::Media::VaultUploadResponse::Data::Files::OrHash
            ).void
          end
          attr_writer :files

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :has_custom_preview

          sig { params(has_custom_preview: T::Boolean).void }
          attr_writer :has_custom_preview

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :has_error

          sig { params(has_error: T::Boolean).void }
          attr_writer :has_error

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :is_ready

          sig { params(is_ready: T::Boolean).void }
          attr_writer :is_ready

          sig { returns(T.nilable(T::Array[T.anything])) }
          attr_reader :release_forms

          sig { params(release_forms: T::Array[T.anything]).void }
          attr_writer :release_forms

          sig { returns(T.nilable(String)) }
          attr_reader :type

          sig { params(type: String).void }
          attr_writer :type

          sig do
            params(
              id: Integer,
              can_view: T::Boolean,
              converted_to_video: T::Boolean,
              created_at: String,
              duration: Integer,
              files:
                Onlyfansapi::Models::Media::VaultUploadResponse::Data::Files::OrHash,
              has_custom_preview: T::Boolean,
              has_error: T::Boolean,
              is_ready: T::Boolean,
              release_forms: T::Array[T.anything],
              type: String
            ).returns(T.attached_class)
          end
          def self.new(
            id: nil,
            can_view: nil,
            converted_to_video: nil,
            created_at: nil,
            duration: nil,
            files: nil,
            has_custom_preview: nil,
            has_error: nil,
            is_ready: nil,
            release_forms: nil,
            type: nil
          )
          end

          sig do
            override.returns(
              {
                id: Integer,
                can_view: T::Boolean,
                converted_to_video: T::Boolean,
                created_at: String,
                duration: Integer,
                files:
                  Onlyfansapi::Models::Media::VaultUploadResponse::Data::Files,
                has_custom_preview: T::Boolean,
                has_error: T::Boolean,
                is_ready: T::Boolean,
                release_forms: T::Array[T.anything],
                type: String
              }
            )
          end
          def to_hash
          end

          class Files < Onlyfansapi::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Onlyfansapi::Models::Media::VaultUploadResponse::Data::Files,
                  Onlyfansapi::Internal::AnyHash
                )
              end

            sig do
              returns(
                T.nilable(
                  Onlyfansapi::Models::Media::VaultUploadResponse::Data::Files::Full
                )
              )
            end
            attr_reader :full

            sig do
              params(
                full:
                  Onlyfansapi::Models::Media::VaultUploadResponse::Data::Files::Full::OrHash
              ).void
            end
            attr_writer :full

            sig { returns(T.nilable(String)) }
            attr_accessor :preview

            sig { returns(T.nilable(String)) }
            attr_accessor :square_preview

            sig { returns(T.nilable(String)) }
            attr_accessor :thumb

            sig do
              params(
                full:
                  Onlyfansapi::Models::Media::VaultUploadResponse::Data::Files::Full::OrHash,
                preview: T.nilable(String),
                square_preview: T.nilable(String),
                thumb: T.nilable(String)
              ).returns(T.attached_class)
            end
            def self.new(
              full: nil,
              preview: nil,
              square_preview: nil,
              thumb: nil
            )
            end

            sig do
              override.returns(
                {
                  full:
                    Onlyfansapi::Models::Media::VaultUploadResponse::Data::Files::Full,
                  preview: T.nilable(String),
                  square_preview: T.nilable(String),
                  thumb: T.nilable(String)
                }
              )
            end
            def to_hash
            end

            class Full < Onlyfansapi::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Onlyfansapi::Models::Media::VaultUploadResponse::Data::Files::Full,
                    Onlyfansapi::Internal::AnyHash
                  )
                end

              sig { returns(T.nilable(Integer)) }
              attr_reader :height

              sig { params(height: Integer).void }
              attr_writer :height

              sig { returns(T.nilable(Integer)) }
              attr_reader :size

              sig { params(size: Integer).void }
              attr_writer :size

              sig { returns(T.nilable(T::Array[T.anything])) }
              attr_reader :sources

              sig { params(sources: T::Array[T.anything]).void }
              attr_writer :sources

              sig { returns(T.nilable(String)) }
              attr_accessor :url

              sig { returns(T.nilable(Integer)) }
              attr_reader :width

              sig { params(width: Integer).void }
              attr_writer :width

              sig do
                params(
                  height: Integer,
                  size: Integer,
                  sources: T::Array[T.anything],
                  url: T.nilable(String),
                  width: Integer
                ).returns(T.attached_class)
              end
              def self.new(
                height: nil,
                size: nil,
                sources: nil,
                url: nil,
                width: nil
              )
              end

              sig do
                override.returns(
                  {
                    height: Integer,
                    size: Integer,
                    sources: T::Array[T.anything],
                    url: T.nilable(String),
                    width: Integer
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
  end
end
