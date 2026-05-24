# typed: strong

module Onlyfansapi
  module Models
    class GiphyListTrendingResponse < Onlyfansapi::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Onlyfansapi::Models::GiphyListTrendingResponse,
            Onlyfansapi::Internal::AnyHash
          )
        end

      sig do
        returns(T.nilable(Onlyfansapi::Models::GiphyListTrendingResponse::Meta))
      end
      attr_reader :_meta

      sig do
        params(
          _meta: Onlyfansapi::Models::GiphyListTrendingResponse::Meta::OrHash
        ).void
      end
      attr_writer :_meta

      sig do
        returns(
          T.nilable(
            T::Array[Onlyfansapi::Models::GiphyListTrendingResponse::Data]
          )
        )
      end
      attr_reader :data

      sig do
        params(
          data:
            T::Array[
              Onlyfansapi::Models::GiphyListTrendingResponse::Data::OrHash
            ]
        ).void
      end
      attr_writer :data

      sig do
        params(
          _meta: Onlyfansapi::Models::GiphyListTrendingResponse::Meta::OrHash,
          data:
            T::Array[
              Onlyfansapi::Models::GiphyListTrendingResponse::Data::OrHash
            ]
        ).returns(T.attached_class)
      end
      def self.new(_meta: nil, data: nil)
      end

      sig do
        override.returns(
          {
            _meta: Onlyfansapi::Models::GiphyListTrendingResponse::Meta,
            data: T::Array[Onlyfansapi::Models::GiphyListTrendingResponse::Data]
          }
        )
      end
      def to_hash
      end

      class Meta < Onlyfansapi::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Onlyfansapi::Models::GiphyListTrendingResponse::Meta,
              Onlyfansapi::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.nilable(
              Onlyfansapi::Models::GiphyListTrendingResponse::Meta::Cache
            )
          )
        end
        attr_reader :_cache

        sig do
          params(
            _cache:
              Onlyfansapi::Models::GiphyListTrendingResponse::Meta::Cache::OrHash
          ).void
        end
        attr_writer :_cache

        sig do
          returns(
            T.nilable(
              Onlyfansapi::Models::GiphyListTrendingResponse::Meta::Credits
            )
          )
        end
        attr_reader :_credits

        sig do
          params(
            _credits:
              Onlyfansapi::Models::GiphyListTrendingResponse::Meta::Credits::OrHash
          ).void
        end
        attr_writer :_credits

        sig do
          returns(
            T.nilable(
              Onlyfansapi::Models::GiphyListTrendingResponse::Meta::RateLimits
            )
          )
        end
        attr_reader :_rate_limits

        sig do
          params(
            _rate_limits:
              Onlyfansapi::Models::GiphyListTrendingResponse::Meta::RateLimits::OrHash
          ).void
        end
        attr_writer :_rate_limits

        sig do
          params(
            _cache:
              Onlyfansapi::Models::GiphyListTrendingResponse::Meta::Cache::OrHash,
            _credits:
              Onlyfansapi::Models::GiphyListTrendingResponse::Meta::Credits::OrHash,
            _rate_limits:
              Onlyfansapi::Models::GiphyListTrendingResponse::Meta::RateLimits::OrHash
          ).returns(T.attached_class)
        end
        def self.new(_cache: nil, _credits: nil, _rate_limits: nil)
        end

        sig do
          override.returns(
            {
              _cache:
                Onlyfansapi::Models::GiphyListTrendingResponse::Meta::Cache,
              _credits:
                Onlyfansapi::Models::GiphyListTrendingResponse::Meta::Credits,
              _rate_limits:
                Onlyfansapi::Models::GiphyListTrendingResponse::Meta::RateLimits
            }
          )
        end
        def to_hash
        end

        class Cache < Onlyfansapi::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Onlyfansapi::Models::GiphyListTrendingResponse::Meta::Cache,
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
                Onlyfansapi::Models::GiphyListTrendingResponse::Meta::Credits,
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
                Onlyfansapi::Models::GiphyListTrendingResponse::Meta::RateLimits,
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
              Onlyfansapi::Models::GiphyListTrendingResponse::Data,
              Onlyfansapi::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(String)) }
        attr_reader :id

        sig { params(id: String).void }
        attr_writer :id

        sig { returns(T.nilable(String)) }
        attr_reader :embed_url

        sig { params(embed_url: String).void }
        attr_writer :embed_url

        sig do
          returns(
            T.nilable(
              Onlyfansapi::Models::GiphyListTrendingResponse::Data::Images
            )
          )
        end
        attr_reader :images

        sig do
          params(
            images:
              Onlyfansapi::Models::GiphyListTrendingResponse::Data::Images::OrHash
          ).void
        end
        attr_writer :images

        sig { returns(T.nilable(String)) }
        attr_reader :rating

        sig { params(rating: String).void }
        attr_writer :rating

        sig { returns(T.nilable(String)) }
        attr_reader :slug

        sig { params(slug: String).void }
        attr_writer :slug

        sig { returns(T.nilable(String)) }
        attr_reader :title

        sig { params(title: String).void }
        attr_writer :title

        sig { returns(T.nilable(String)) }
        attr_reader :type

        sig { params(type: String).void }
        attr_writer :type

        sig { returns(T.nilable(String)) }
        attr_reader :url

        sig { params(url: String).void }
        attr_writer :url

        sig { returns(T.nilable(String)) }
        attr_reader :username

        sig { params(username: String).void }
        attr_writer :username

        sig do
          params(
            id: String,
            embed_url: String,
            images:
              Onlyfansapi::Models::GiphyListTrendingResponse::Data::Images::OrHash,
            rating: String,
            slug: String,
            title: String,
            type: String,
            url: String,
            username: String
          ).returns(T.attached_class)
        end
        def self.new(
          id: nil,
          embed_url: nil,
          images: nil,
          rating: nil,
          slug: nil,
          title: nil,
          type: nil,
          url: nil,
          username: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              embed_url: String,
              images:
                Onlyfansapi::Models::GiphyListTrendingResponse::Data::Images,
              rating: String,
              slug: String,
              title: String,
              type: String,
              url: String,
              username: String
            }
          )
        end
        def to_hash
        end

        class Images < Onlyfansapi::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Onlyfansapi::Models::GiphyListTrendingResponse::Data::Images,
                Onlyfansapi::Internal::AnyHash
              )
            end

          sig do
            returns(
              T.nilable(
                Onlyfansapi::Models::GiphyListTrendingResponse::Data::Images::FixedHeight
              )
            )
          end
          attr_reader :fixed_height

          sig do
            params(
              fixed_height:
                Onlyfansapi::Models::GiphyListTrendingResponse::Data::Images::FixedHeight::OrHash
            ).void
          end
          attr_writer :fixed_height

          sig do
            returns(
              T.nilable(
                Onlyfansapi::Models::GiphyListTrendingResponse::Data::Images::Original
              )
            )
          end
          attr_reader :original

          sig do
            params(
              original:
                Onlyfansapi::Models::GiphyListTrendingResponse::Data::Images::Original::OrHash
            ).void
          end
          attr_writer :original

          sig do
            params(
              fixed_height:
                Onlyfansapi::Models::GiphyListTrendingResponse::Data::Images::FixedHeight::OrHash,
              original:
                Onlyfansapi::Models::GiphyListTrendingResponse::Data::Images::Original::OrHash
            ).returns(T.attached_class)
          end
          def self.new(fixed_height: nil, original: nil)
          end

          sig do
            override.returns(
              {
                fixed_height:
                  Onlyfansapi::Models::GiphyListTrendingResponse::Data::Images::FixedHeight,
                original:
                  Onlyfansapi::Models::GiphyListTrendingResponse::Data::Images::Original
              }
            )
          end
          def to_hash
          end

          class FixedHeight < Onlyfansapi::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Onlyfansapi::Models::GiphyListTrendingResponse::Data::Images::FixedHeight,
                  Onlyfansapi::Internal::AnyHash
                )
              end

            sig { returns(T.nilable(String)) }
            attr_reader :height

            sig { params(height: String).void }
            attr_writer :height

            sig { returns(T.nilable(String)) }
            attr_reader :url

            sig { params(url: String).void }
            attr_writer :url

            sig { returns(T.nilable(String)) }
            attr_reader :width

            sig { params(width: String).void }
            attr_writer :width

            sig do
              params(height: String, url: String, width: String).returns(
                T.attached_class
              )
            end
            def self.new(height: nil, url: nil, width: nil)
            end

            sig do
              override.returns({ height: String, url: String, width: String })
            end
            def to_hash
            end
          end

          class Original < Onlyfansapi::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Onlyfansapi::Models::GiphyListTrendingResponse::Data::Images::Original,
                  Onlyfansapi::Internal::AnyHash
                )
              end

            sig { returns(T.nilable(String)) }
            attr_reader :height

            sig { params(height: String).void }
            attr_writer :height

            sig { returns(T.nilable(String)) }
            attr_reader :mp4

            sig { params(mp4: String).void }
            attr_writer :mp4

            sig { returns(T.nilable(String)) }
            attr_reader :url

            sig { params(url: String).void }
            attr_writer :url

            sig { returns(T.nilable(String)) }
            attr_reader :webp

            sig { params(webp: String).void }
            attr_writer :webp

            sig { returns(T.nilable(String)) }
            attr_reader :width

            sig { params(width: String).void }
            attr_writer :width

            sig do
              params(
                height: String,
                mp4: String,
                url: String,
                webp: String,
                width: String
              ).returns(T.attached_class)
            end
            def self.new(height: nil, mp4: nil, url: nil, webp: nil, width: nil)
            end

            sig do
              override.returns(
                {
                  height: String,
                  mp4: String,
                  url: String,
                  webp: String,
                  width: String
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
