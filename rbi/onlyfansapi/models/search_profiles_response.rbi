# typed: strong

module Onlyfansapi
  module Models
    class SearchProfilesResponse < Onlyfansapi::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Onlyfansapi::Models::SearchProfilesResponse,
            Onlyfansapi::Internal::AnyHash
          )
        end

      sig do
        returns(T.nilable(Onlyfansapi::Models::SearchProfilesResponse::Meta))
      end
      attr_reader :_meta

      sig do
        params(
          _meta: Onlyfansapi::Models::SearchProfilesResponse::Meta::OrHash
        ).void
      end
      attr_writer :_meta

      sig do
        returns(
          T.nilable(Onlyfansapi::Models::SearchProfilesResponse::Pagination)
        )
      end
      attr_reader :_pagination

      sig do
        params(
          _pagination:
            Onlyfansapi::Models::SearchProfilesResponse::Pagination::OrHash
        ).void
      end
      attr_writer :_pagination

      sig do
        returns(
          T.nilable(T::Array[Onlyfansapi::Models::SearchProfilesResponse::Data])
        )
      end
      attr_reader :data

      sig do
        params(
          data:
            T::Array[Onlyfansapi::Models::SearchProfilesResponse::Data::OrHash]
        ).void
      end
      attr_writer :data

      sig do
        params(
          _meta: Onlyfansapi::Models::SearchProfilesResponse::Meta::OrHash,
          _pagination:
            Onlyfansapi::Models::SearchProfilesResponse::Pagination::OrHash,
          data:
            T::Array[Onlyfansapi::Models::SearchProfilesResponse::Data::OrHash]
        ).returns(T.attached_class)
      end
      def self.new(_meta: nil, _pagination: nil, data: nil)
      end

      sig do
        override.returns(
          {
            _meta: Onlyfansapi::Models::SearchProfilesResponse::Meta,
            _pagination:
              Onlyfansapi::Models::SearchProfilesResponse::Pagination,
            data: T::Array[Onlyfansapi::Models::SearchProfilesResponse::Data]
          }
        )
      end
      def to_hash
      end

      class Meta < Onlyfansapi::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Onlyfansapi::Models::SearchProfilesResponse::Meta,
              Onlyfansapi::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.nilable(Onlyfansapi::Models::SearchProfilesResponse::Meta::Cache)
          )
        end
        attr_reader :_cache

        sig do
          params(
            _cache:
              Onlyfansapi::Models::SearchProfilesResponse::Meta::Cache::OrHash
          ).void
        end
        attr_writer :_cache

        sig do
          returns(
            T.nilable(
              Onlyfansapi::Models::SearchProfilesResponse::Meta::Credits
            )
          )
        end
        attr_reader :_credits

        sig do
          params(
            _credits:
              Onlyfansapi::Models::SearchProfilesResponse::Meta::Credits::OrHash
          ).void
        end
        attr_writer :_credits

        sig do
          returns(
            T.nilable(
              Onlyfansapi::Models::SearchProfilesResponse::Meta::RateLimits
            )
          )
        end
        attr_reader :_rate_limits

        sig do
          params(
            _rate_limits:
              Onlyfansapi::Models::SearchProfilesResponse::Meta::RateLimits::OrHash
          ).void
        end
        attr_writer :_rate_limits

        sig do
          params(
            _cache:
              Onlyfansapi::Models::SearchProfilesResponse::Meta::Cache::OrHash,
            _credits:
              Onlyfansapi::Models::SearchProfilesResponse::Meta::Credits::OrHash,
            _rate_limits:
              Onlyfansapi::Models::SearchProfilesResponse::Meta::RateLimits::OrHash
          ).returns(T.attached_class)
        end
        def self.new(_cache: nil, _credits: nil, _rate_limits: nil)
        end

        sig do
          override.returns(
            {
              _cache: Onlyfansapi::Models::SearchProfilesResponse::Meta::Cache,
              _credits:
                Onlyfansapi::Models::SearchProfilesResponse::Meta::Credits,
              _rate_limits:
                Onlyfansapi::Models::SearchProfilesResponse::Meta::RateLimits
            }
          )
        end
        def to_hash
        end

        class Cache < Onlyfansapi::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Onlyfansapi::Models::SearchProfilesResponse::Meta::Cache,
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
                Onlyfansapi::Models::SearchProfilesResponse::Meta::Credits,
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
                Onlyfansapi::Models::SearchProfilesResponse::Meta::RateLimits,
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

      class Pagination < Onlyfansapi::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Onlyfansapi::Models::SearchProfilesResponse::Pagination,
              Onlyfansapi::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(String)) }
        attr_reader :next_cursor

        sig { params(next_cursor: String).void }
        attr_writer :next_cursor

        sig { returns(T.nilable(String)) }
        attr_reader :next_page_url

        sig { params(next_page_url: String).void }
        attr_writer :next_page_url

        sig { returns(T.nilable(Integer)) }
        attr_reader :total_results

        sig { params(total_results: Integer).void }
        attr_writer :total_results

        sig do
          params(
            next_cursor: String,
            next_page_url: String,
            total_results: Integer
          ).returns(T.attached_class)
        end
        def self.new(next_cursor: nil, next_page_url: nil, total_results: nil)
        end

        sig do
          override.returns(
            {
              next_cursor: String,
              next_page_url: String,
              total_results: Integer
            }
          )
        end
        def to_hash
        end
      end

      class Data < Onlyfansapi::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Onlyfansapi::Models::SearchProfilesResponse::Data,
              Onlyfansapi::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(String)) }
        attr_reader :about

        sig { params(about: String).void }
        attr_writer :about

        sig { returns(T.nilable(Integer)) }
        attr_reader :audios_count

        sig { params(audios_count: Integer).void }
        attr_writer :audios_count

        sig { returns(T.nilable(String)) }
        attr_reader :avatar_url

        sig { params(avatar_url: String).void }
        attr_writer :avatar_url

        sig { returns(T.nilable(String)) }
        attr_accessor :bundles

        sig { returns(T.nilable(String)) }
        attr_accessor :facebook

        sig { returns(T.nilable(String)) }
        attr_accessor :fansly

        sig { returns(T.nilable(Integer)) }
        attr_reader :favorited_count

        sig { params(favorited_count: Integer).void }
        attr_writer :favorited_count

        sig { returns(T.nilable(Integer)) }
        attr_reader :favorites_count

        sig { params(favorites_count: Integer).void }
        attr_writer :favorites_count

        sig { returns(T.nilable(String)) }
        attr_reader :header_url

        sig { params(header_url: String).void }
        attr_writer :header_url

        sig { returns(T.nilable(String)) }
        attr_accessor :instagram

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :is_adult_content

        sig { params(is_adult_content: T::Boolean).void }
        attr_writer :is_adult_content

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :is_performer

        sig { params(is_performer: T::Boolean).void }
        attr_writer :is_performer

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :is_real_performer

        sig { params(is_real_performer: T::Boolean).void }
        attr_writer :is_real_performer

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :is_verified

        sig { params(is_verified: T::Boolean).void }
        attr_writer :is_verified

        sig { returns(T.nilable(String)) }
        attr_reader :join_date

        sig { params(join_date: String).void }
        attr_writer :join_date

        sig { returns(T.nilable(String)) }
        attr_accessor :last_seen_at

        sig { returns(T.nilable(String)) }
        attr_reader :location

        sig { params(location: String).void }
        attr_writer :location

        sig { returns(T.nilable(String)) }
        attr_accessor :manyvids

        sig { returns(T.nilable(Integer)) }
        attr_reader :min_subscribe_price

        sig { params(min_subscribe_price: Integer).void }
        attr_writer :min_subscribe_price

        sig { returns(T.nilable(String)) }
        attr_reader :name

        sig { params(name: String).void }
        attr_writer :name

        sig { returns(T.nilable(String)) }
        attr_reader :ofapi_gender

        sig { params(ofapi_gender: String).void }
        attr_writer :ofapi_gender

        sig { returns(T.nilable(Float)) }
        attr_reader :ofapi_gender_confidence

        sig { params(ofapi_gender_confidence: Float).void }
        attr_writer :ofapi_gender_confidence

        sig { returns(T.nilable(Integer)) }
        attr_reader :onlyfans_id

        sig { params(onlyfans_id: Integer).void }
        attr_writer :onlyfans_id

        sig { returns(T.nilable(Integer)) }
        attr_reader :photos_count

        sig { params(photos_count: Integer).void }
        attr_writer :photos_count

        sig { returns(T.nilable(String)) }
        attr_accessor :pornhub

        sig { returns(T.nilable(Integer)) }
        attr_reader :posts_count

        sig { params(posts_count: Integer).void }
        attr_writer :posts_count

        sig { returns(T.nilable(String)) }
        attr_accessor :promotions

        sig { returns(T.nilable(String)) }
        attr_reader :stats_updated_at

        sig { params(stats_updated_at: String).void }
        attr_writer :stats_updated_at

        sig { returns(T.nilable(Integer)) }
        attr_reader :subscribe_price

        sig { params(subscribe_price: Integer).void }
        attr_writer :subscribe_price

        sig { returns(T.nilable(String)) }
        attr_accessor :subscribers_count

        sig { returns(T.nilable(String)) }
        attr_accessor :tiktok

        sig { returns(T.nilable(String)) }
        attr_accessor :twitter

        sig { returns(T.nilable(String)) }
        attr_reader :username

        sig { params(username: String).void }
        attr_writer :username

        sig { returns(T.nilable(Integer)) }
        attr_reader :videos_count

        sig { params(videos_count: Integer).void }
        attr_writer :videos_count

        sig { returns(T.nilable(String)) }
        attr_reader :website

        sig { params(website: String).void }
        attr_writer :website

        sig { returns(T.nilable(String)) }
        attr_accessor :wishlist

        sig do
          params(
            about: String,
            audios_count: Integer,
            avatar_url: String,
            bundles: T.nilable(String),
            facebook: T.nilable(String),
            fansly: T.nilable(String),
            favorited_count: Integer,
            favorites_count: Integer,
            header_url: String,
            instagram: T.nilable(String),
            is_adult_content: T::Boolean,
            is_performer: T::Boolean,
            is_real_performer: T::Boolean,
            is_verified: T::Boolean,
            join_date: String,
            last_seen_at: T.nilable(String),
            location: String,
            manyvids: T.nilable(String),
            min_subscribe_price: Integer,
            name: String,
            ofapi_gender: String,
            ofapi_gender_confidence: Float,
            onlyfans_id: Integer,
            photos_count: Integer,
            pornhub: T.nilable(String),
            posts_count: Integer,
            promotions: T.nilable(String),
            stats_updated_at: String,
            subscribe_price: Integer,
            subscribers_count: T.nilable(String),
            tiktok: T.nilable(String),
            twitter: T.nilable(String),
            username: String,
            videos_count: Integer,
            website: String,
            wishlist: T.nilable(String)
          ).returns(T.attached_class)
        end
        def self.new(
          about: nil,
          audios_count: nil,
          avatar_url: nil,
          bundles: nil,
          facebook: nil,
          fansly: nil,
          favorited_count: nil,
          favorites_count: nil,
          header_url: nil,
          instagram: nil,
          is_adult_content: nil,
          is_performer: nil,
          is_real_performer: nil,
          is_verified: nil,
          join_date: nil,
          last_seen_at: nil,
          location: nil,
          manyvids: nil,
          min_subscribe_price: nil,
          name: nil,
          ofapi_gender: nil,
          ofapi_gender_confidence: nil,
          onlyfans_id: nil,
          photos_count: nil,
          pornhub: nil,
          posts_count: nil,
          promotions: nil,
          stats_updated_at: nil,
          subscribe_price: nil,
          subscribers_count: nil,
          tiktok: nil,
          twitter: nil,
          username: nil,
          videos_count: nil,
          website: nil,
          wishlist: nil
        )
        end

        sig do
          override.returns(
            {
              about: String,
              audios_count: Integer,
              avatar_url: String,
              bundles: T.nilable(String),
              facebook: T.nilable(String),
              fansly: T.nilable(String),
              favorited_count: Integer,
              favorites_count: Integer,
              header_url: String,
              instagram: T.nilable(String),
              is_adult_content: T::Boolean,
              is_performer: T::Boolean,
              is_real_performer: T::Boolean,
              is_verified: T::Boolean,
              join_date: String,
              last_seen_at: T.nilable(String),
              location: String,
              manyvids: T.nilable(String),
              min_subscribe_price: Integer,
              name: String,
              ofapi_gender: String,
              ofapi_gender_confidence: Float,
              onlyfans_id: Integer,
              photos_count: Integer,
              pornhub: T.nilable(String),
              posts_count: Integer,
              promotions: T.nilable(String),
              stats_updated_at: String,
              subscribe_price: Integer,
              subscribers_count: T.nilable(String),
              tiktok: T.nilable(String),
              twitter: T.nilable(String),
              username: String,
              videos_count: Integer,
              website: String,
              wishlist: T.nilable(String)
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
