# typed: strong

module Onlyfansapi
  module Models
    class PostDeleteResponse < Onlyfansapi::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Onlyfansapi::Models::PostDeleteResponse,
            Onlyfansapi::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(Onlyfansapi::Models::PostDeleteResponse::Meta)) }
      attr_reader :_meta

      sig do
        params(
          _meta: Onlyfansapi::Models::PostDeleteResponse::Meta::OrHash
        ).void
      end
      attr_writer :_meta

      sig { returns(T.nilable(Onlyfansapi::Models::PostDeleteResponse::Data)) }
      attr_reader :data

      sig do
        params(data: Onlyfansapi::Models::PostDeleteResponse::Data::OrHash).void
      end
      attr_writer :data

      sig do
        params(
          _meta: Onlyfansapi::Models::PostDeleteResponse::Meta::OrHash,
          data: Onlyfansapi::Models::PostDeleteResponse::Data::OrHash
        ).returns(T.attached_class)
      end
      def self.new(_meta: nil, data: nil)
      end

      sig do
        override.returns(
          {
            _meta: Onlyfansapi::Models::PostDeleteResponse::Meta,
            data: Onlyfansapi::Models::PostDeleteResponse::Data
          }
        )
      end
      def to_hash
      end

      class Meta < Onlyfansapi::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Onlyfansapi::Models::PostDeleteResponse::Meta,
              Onlyfansapi::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.nilable(Onlyfansapi::Models::PostDeleteResponse::Meta::Cache)
          )
        end
        attr_reader :_cache

        sig do
          params(
            _cache: Onlyfansapi::Models::PostDeleteResponse::Meta::Cache::OrHash
          ).void
        end
        attr_writer :_cache

        sig do
          returns(
            T.nilable(Onlyfansapi::Models::PostDeleteResponse::Meta::Credits)
          )
        end
        attr_reader :_credits

        sig do
          params(
            _credits:
              Onlyfansapi::Models::PostDeleteResponse::Meta::Credits::OrHash
          ).void
        end
        attr_writer :_credits

        sig do
          returns(
            T.nilable(Onlyfansapi::Models::PostDeleteResponse::Meta::RateLimits)
          )
        end
        attr_reader :_rate_limits

        sig do
          params(
            _rate_limits:
              Onlyfansapi::Models::PostDeleteResponse::Meta::RateLimits::OrHash
          ).void
        end
        attr_writer :_rate_limits

        sig do
          params(
            _cache:
              Onlyfansapi::Models::PostDeleteResponse::Meta::Cache::OrHash,
            _credits:
              Onlyfansapi::Models::PostDeleteResponse::Meta::Credits::OrHash,
            _rate_limits:
              Onlyfansapi::Models::PostDeleteResponse::Meta::RateLimits::OrHash
          ).returns(T.attached_class)
        end
        def self.new(_cache: nil, _credits: nil, _rate_limits: nil)
        end

        sig do
          override.returns(
            {
              _cache: Onlyfansapi::Models::PostDeleteResponse::Meta::Cache,
              _credits: Onlyfansapi::Models::PostDeleteResponse::Meta::Credits,
              _rate_limits:
                Onlyfansapi::Models::PostDeleteResponse::Meta::RateLimits
            }
          )
        end
        def to_hash
        end

        class Cache < Onlyfansapi::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Onlyfansapi::Models::PostDeleteResponse::Meta::Cache,
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
                Onlyfansapi::Models::PostDeleteResponse::Meta::Credits,
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
                Onlyfansapi::Models::PostDeleteResponse::Meta::RateLimits,
                Onlyfansapi::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(Integer)) }
          attr_reader :limit_day

          sig { params(limit_day: Integer).void }
          attr_writer :limit_day

          sig { returns(T.nilable(Integer)) }
          attr_reader :limit_minute

          sig { params(limit_minute: Integer).void }
          attr_writer :limit_minute

          sig { returns(T.nilable(Integer)) }
          attr_reader :remaining_day

          sig { params(remaining_day: Integer).void }
          attr_writer :remaining_day

          sig { returns(T.nilable(Integer)) }
          attr_reader :remaining_minute

          sig { params(remaining_minute: Integer).void }
          attr_writer :remaining_minute

          sig do
            params(
              limit_day: Integer,
              limit_minute: Integer,
              remaining_day: Integer,
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
                limit_day: Integer,
                limit_minute: Integer,
                remaining_day: Integer,
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
              Onlyfansapi::Models::PostDeleteResponse::Data,
              Onlyfansapi::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.nilable(Onlyfansapi::Models::PostDeleteResponse::Data::Counters)
          )
        end
        attr_reader :counters

        sig do
          params(
            counters:
              Onlyfansapi::Models::PostDeleteResponse::Data::Counters::OrHash
          ).void
        end
        attr_writer :counters

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :success

        sig { params(success: T::Boolean).void }
        attr_writer :success

        sig do
          params(
            counters:
              Onlyfansapi::Models::PostDeleteResponse::Data::Counters::OrHash,
            success: T::Boolean
          ).returns(T.attached_class)
        end
        def self.new(counters: nil, success: nil)
        end

        sig do
          override.returns(
            {
              counters: Onlyfansapi::Models::PostDeleteResponse::Data::Counters,
              success: T::Boolean
            }
          )
        end
        def to_hash
        end

        class Counters < Onlyfansapi::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Onlyfansapi::Models::PostDeleteResponse::Data::Counters,
                Onlyfansapi::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(Integer)) }
          attr_reader :archived_posts_count

          sig { params(archived_posts_count: Integer).void }
          attr_writer :archived_posts_count

          sig { returns(T.nilable(Integer)) }
          attr_reader :audios_count

          sig { params(audios_count: Integer).void }
          attr_writer :audios_count

          sig { returns(T.nilable(Integer)) }
          attr_reader :medias_count

          sig { params(medias_count: Integer).void }
          attr_writer :medias_count

          sig { returns(T.nilable(Integer)) }
          attr_reader :photos_count

          sig { params(photos_count: Integer).void }
          attr_writer :photos_count

          sig { returns(T.nilable(Integer)) }
          attr_reader :posts_count

          sig { params(posts_count: Integer).void }
          attr_writer :posts_count

          sig { returns(T.nilable(Integer)) }
          attr_reader :streams_count

          sig { params(streams_count: Integer).void }
          attr_writer :streams_count

          sig { returns(T.nilable(Integer)) }
          attr_reader :videos_count

          sig { params(videos_count: Integer).void }
          attr_writer :videos_count

          sig do
            params(
              archived_posts_count: Integer,
              audios_count: Integer,
              medias_count: Integer,
              photos_count: Integer,
              posts_count: Integer,
              streams_count: Integer,
              videos_count: Integer
            ).returns(T.attached_class)
          end
          def self.new(
            archived_posts_count: nil,
            audios_count: nil,
            medias_count: nil,
            photos_count: nil,
            posts_count: nil,
            streams_count: nil,
            videos_count: nil
          )
          end

          sig do
            override.returns(
              {
                archived_posts_count: Integer,
                audios_count: Integer,
                medias_count: Integer,
                photos_count: Integer,
                posts_count: Integer,
                streams_count: Integer,
                videos_count: Integer
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
