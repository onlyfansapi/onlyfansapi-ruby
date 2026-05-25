# typed: strong

module Onlyfans
  module Models
    module Statistics
      # No filter
      module ReachGetProfileVisitorsResponse
        extend Onlyfans::Internal::Type::Union

        Variants =
          T.type_alias do
            T.any(
              Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember0,
              Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember1,
              Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember2
            )
          end

        class UnionMember0 < Onlyfans::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember0,
                Onlyfans::Internal::AnyHash
              )
            end

          sig do
            returns(
              T.nilable(
                Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember0::Meta
              )
            )
          end
          attr_reader :_meta

          sig do
            params(
              _meta:
                Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember0::Meta::OrHash
            ).void
          end
          attr_writer :_meta

          sig do
            returns(
              T.nilable(
                Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember0::Data
              )
            )
          end
          attr_reader :data

          sig do
            params(
              data:
                Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember0::Data::OrHash
            ).void
          end
          attr_writer :data

          # No filter
          sig do
            params(
              _meta:
                Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember0::Meta::OrHash,
              data:
                Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember0::Data::OrHash
            ).returns(T.attached_class)
          end
          def self.new(_meta: nil, data: nil)
          end

          sig do
            override.returns(
              {
                _meta:
                  Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember0::Meta,
                data:
                  Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember0::Data
              }
            )
          end
          def to_hash
          end

          class Meta < Onlyfans::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember0::Meta,
                  Onlyfans::Internal::AnyHash
                )
              end

            sig do
              returns(
                T.nilable(
                  Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember0::Meta::Cache
                )
              )
            end
            attr_reader :_cache

            sig do
              params(
                _cache:
                  Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember0::Meta::Cache::OrHash
              ).void
            end
            attr_writer :_cache

            sig do
              returns(
                T.nilable(
                  Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember0::Meta::Credits
                )
              )
            end
            attr_reader :_credits

            sig do
              params(
                _credits:
                  Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember0::Meta::Credits::OrHash
              ).void
            end
            attr_writer :_credits

            sig do
              returns(
                T.nilable(
                  Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember0::Meta::RateLimits
                )
              )
            end
            attr_reader :_rate_limits

            sig do
              params(
                _rate_limits:
                  Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember0::Meta::RateLimits::OrHash
              ).void
            end
            attr_writer :_rate_limits

            sig do
              params(
                _cache:
                  Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember0::Meta::Cache::OrHash,
                _credits:
                  Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember0::Meta::Credits::OrHash,
                _rate_limits:
                  Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember0::Meta::RateLimits::OrHash
              ).returns(T.attached_class)
            end
            def self.new(_cache: nil, _credits: nil, _rate_limits: nil)
            end

            sig do
              override.returns(
                {
                  _cache:
                    Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember0::Meta::Cache,
                  _credits:
                    Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember0::Meta::Credits,
                  _rate_limits:
                    Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember0::Meta::RateLimits
                }
              )
            end
            def to_hash
            end

            class Cache < Onlyfans::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember0::Meta::Cache,
                    Onlyfans::Internal::AnyHash
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

            class Credits < Onlyfans::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember0::Meta::Credits,
                    Onlyfans::Internal::AnyHash
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

            class RateLimits < Onlyfans::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember0::Meta::RateLimits,
                    Onlyfans::Internal::AnyHash
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

          class Data < Onlyfans::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember0::Data,
                  Onlyfans::Internal::AnyHash
                )
              end

            sig do
              returns(
                T.nilable(
                  Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember0::Data::Chart
                )
              )
            end
            attr_reader :chart

            sig do
              params(
                chart:
                  Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember0::Data::Chart::OrHash
              ).void
            end
            attr_writer :chart

            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :has_stats

            sig { params(has_stats: T::Boolean).void }
            attr_writer :has_stats

            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :is_available

            sig { params(is_available: T::Boolean).void }
            attr_writer :is_available

            sig do
              returns(
                T.nilable(
                  Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember0::Data::TopCountries
                )
              )
            end
            attr_reader :top_countries

            sig do
              params(
                top_countries:
                  Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember0::Data::TopCountries::OrHash
              ).void
            end
            attr_writer :top_countries

            sig do
              returns(
                T.nilable(
                  Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember0::Data::TopDurationUsers
                )
              )
            end
            attr_reader :top_duration_users

            sig do
              params(
                top_duration_users:
                  Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember0::Data::TopDurationUsers::OrHash
              ).void
            end
            attr_writer :top_duration_users

            sig do
              returns(
                T.nilable(
                  Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember0::Data::Total
                )
              )
            end
            attr_reader :total

            sig do
              params(
                total:
                  Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember0::Data::Total::OrHash
              ).void
            end
            attr_writer :total

            sig do
              params(
                chart:
                  Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember0::Data::Chart::OrHash,
                has_stats: T::Boolean,
                is_available: T::Boolean,
                top_countries:
                  Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember0::Data::TopCountries::OrHash,
                top_duration_users:
                  Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember0::Data::TopDurationUsers::OrHash,
                total:
                  Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember0::Data::Total::OrHash
              ).returns(T.attached_class)
            end
            def self.new(
              chart: nil,
              has_stats: nil,
              is_available: nil,
              top_countries: nil,
              top_duration_users: nil,
              total: nil
            )
            end

            sig do
              override.returns(
                {
                  chart:
                    Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember0::Data::Chart,
                  has_stats: T::Boolean,
                  is_available: T::Boolean,
                  top_countries:
                    Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember0::Data::TopCountries,
                  top_duration_users:
                    Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember0::Data::TopDurationUsers,
                  total:
                    Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember0::Data::Total
                }
              )
            end
            def to_hash
            end

            class Chart < Onlyfans::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember0::Data::Chart,
                    Onlyfans::Internal::AnyHash
                  )
                end

              sig do
                returns(
                  T.nilable(
                    T::Array[
                      Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember0::Data::Chart::Duration
                    ]
                  )
                )
              end
              attr_reader :duration

              sig do
                params(
                  duration:
                    T::Array[
                      Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember0::Data::Chart::Duration::OrHash
                    ]
                ).void
              end
              attr_writer :duration

              sig do
                returns(
                  T.nilable(
                    T::Array[
                      Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember0::Data::Chart::Visitor
                    ]
                  )
                )
              end
              attr_reader :visitors

              sig do
                params(
                  visitors:
                    T::Array[
                      Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember0::Data::Chart::Visitor::OrHash
                    ]
                ).void
              end
              attr_writer :visitors

              sig do
                params(
                  duration:
                    T::Array[
                      Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember0::Data::Chart::Duration::OrHash
                    ],
                  visitors:
                    T::Array[
                      Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember0::Data::Chart::Visitor::OrHash
                    ]
                ).returns(T.attached_class)
              end
              def self.new(duration: nil, visitors: nil)
              end

              sig do
                override.returns(
                  {
                    duration:
                      T::Array[
                        Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember0::Data::Chart::Duration
                      ],
                    visitors:
                      T::Array[
                        Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember0::Data::Chart::Visitor
                      ]
                  }
                )
              end
              def to_hash
              end

              class Duration < Onlyfans::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember0::Data::Chart::Duration,
                      Onlyfans::Internal::AnyHash
                    )
                  end

                sig { returns(T.nilable(Integer)) }
                attr_reader :count

                sig { params(count: Integer).void }
                attr_writer :count

                sig { returns(T.nilable(String)) }
                attr_reader :date

                sig { params(date: String).void }
                attr_writer :date

                sig do
                  params(count: Integer, date: String).returns(T.attached_class)
                end
                def self.new(count: nil, date: nil)
                end

                sig { override.returns({ count: Integer, date: String }) }
                def to_hash
                end
              end

              class Visitor < Onlyfans::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember0::Data::Chart::Visitor,
                      Onlyfans::Internal::AnyHash
                    )
                  end

                sig { returns(T.nilable(Integer)) }
                attr_reader :count

                sig { params(count: Integer).void }
                attr_writer :count

                sig { returns(T.nilable(String)) }
                attr_reader :date

                sig { params(date: String).void }
                attr_writer :date

                sig do
                  params(count: Integer, date: String).returns(T.attached_class)
                end
                def self.new(count: nil, date: nil)
                end

                sig { override.returns({ count: Integer, date: String }) }
                def to_hash
                end
              end
            end

            class TopCountries < Onlyfans::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember0::Data::TopCountries,
                    Onlyfans::Internal::AnyHash
                  )
                end

              sig { returns(T.nilable(T::Boolean)) }
              attr_reader :has_more

              sig { params(has_more: T::Boolean).void }
              attr_writer :has_more

              sig do
                returns(
                  T.nilable(
                    T::Array[
                      Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember0::Data::TopCountries::Row
                    ]
                  )
                )
              end
              attr_reader :rows

              sig do
                params(
                  rows:
                    T::Array[
                      Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember0::Data::TopCountries::Row::OrHash
                    ]
                ).void
              end
              attr_writer :rows

              sig do
                returns(
                  T.nilable(
                    Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember0::Data::TopCountries::Totals
                  )
                )
              end
              attr_reader :totals

              sig do
                params(
                  totals:
                    Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember0::Data::TopCountries::Totals::OrHash
                ).void
              end
              attr_writer :totals

              sig do
                params(
                  has_more: T::Boolean,
                  rows:
                    T::Array[
                      Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember0::Data::TopCountries::Row::OrHash
                    ],
                  totals:
                    Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember0::Data::TopCountries::Totals::OrHash
                ).returns(T.attached_class)
              end
              def self.new(has_more: nil, rows: nil, totals: nil)
              end

              sig do
                override.returns(
                  {
                    has_more: T::Boolean,
                    rows:
                      T::Array[
                        Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember0::Data::TopCountries::Row
                      ],
                    totals:
                      Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember0::Data::TopCountries::Totals
                  }
                )
              end
              def to_hash
              end

              class Row < Onlyfans::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember0::Data::TopCountries::Row,
                      Onlyfans::Internal::AnyHash
                    )
                  end

                sig { returns(T.nilable(String)) }
                attr_reader :country_code

                sig { params(country_code: String).void }
                attr_writer :country_code

                sig { returns(T.nilable(String)) }
                attr_reader :country_name

                sig { params(country_name: String).void }
                attr_writer :country_name

                sig { returns(T.nilable(Integer)) }
                attr_reader :rank

                sig { params(rank: Integer).void }
                attr_writer :rank

                sig do
                  returns(
                    T.nilable(
                      Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember0::Data::TopCountries::Row::ViewsCount
                    )
                  )
                end
                attr_reader :views_count

                sig do
                  params(
                    views_count:
                      Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember0::Data::TopCountries::Row::ViewsCount::OrHash
                  ).void
                end
                attr_writer :views_count

                sig do
                  params(
                    country_code: String,
                    country_name: String,
                    rank: Integer,
                    views_count:
                      Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember0::Data::TopCountries::Row::ViewsCount::OrHash
                  ).returns(T.attached_class)
                end
                def self.new(
                  country_code: nil,
                  country_name: nil,
                  rank: nil,
                  views_count: nil
                )
                end

                sig do
                  override.returns(
                    {
                      country_code: String,
                      country_name: String,
                      rank: Integer,
                      views_count:
                        Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember0::Data::TopCountries::Row::ViewsCount
                    }
                  )
                end
                def to_hash
                end

                class ViewsCount < Onlyfans::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember0::Data::TopCountries::Row::ViewsCount,
                        Onlyfans::Internal::AnyHash
                      )
                    end

                  sig { returns(T.nilable(Integer)) }
                  attr_reader :guests

                  sig { params(guests: Integer).void }
                  attr_writer :guests

                  sig { returns(T.nilable(Integer)) }
                  attr_reader :subscribers

                  sig { params(subscribers: Integer).void }
                  attr_writer :subscribers

                  sig { returns(T.nilable(Integer)) }
                  attr_reader :total

                  sig { params(total: Integer).void }
                  attr_writer :total

                  sig { returns(T.nilable(Integer)) }
                  attr_reader :users

                  sig { params(users: Integer).void }
                  attr_writer :users

                  sig do
                    params(
                      guests: Integer,
                      subscribers: Integer,
                      total: Integer,
                      users: Integer
                    ).returns(T.attached_class)
                  end
                  def self.new(
                    guests: nil,
                    subscribers: nil,
                    total: nil,
                    users: nil
                  )
                  end

                  sig do
                    override.returns(
                      {
                        guests: Integer,
                        subscribers: Integer,
                        total: Integer,
                        users: Integer
                      }
                    )
                  end
                  def to_hash
                  end
                end
              end

              class Totals < Onlyfans::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember0::Data::TopCountries::Totals,
                      Onlyfans::Internal::AnyHash
                    )
                  end

                sig { returns(T.nilable(String)) }
                attr_reader :guests

                sig { params(guests: String).void }
                attr_writer :guests

                sig { returns(T.nilable(Integer)) }
                attr_reader :subscribers

                sig { params(subscribers: Integer).void }
                attr_writer :subscribers

                sig { returns(T.nilable(Integer)) }
                attr_reader :total

                sig { params(total: Integer).void }
                attr_writer :total

                sig { returns(T.nilable(String)) }
                attr_reader :users

                sig { params(users: String).void }
                attr_writer :users

                sig do
                  params(
                    guests: String,
                    subscribers: Integer,
                    total: Integer,
                    users: String
                  ).returns(T.attached_class)
                end
                def self.new(
                  guests: nil,
                  subscribers: nil,
                  total: nil,
                  users: nil
                )
                end

                sig do
                  override.returns(
                    {
                      guests: String,
                      subscribers: Integer,
                      total: Integer,
                      users: String
                    }
                  )
                end
                def to_hash
                end
              end
            end

            class TopDurationUsers < Onlyfans::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember0::Data::TopDurationUsers,
                    Onlyfans::Internal::AnyHash
                  )
                end

              sig do
                returns(
                  T.nilable(
                    Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember0::Data::TopDurationUsers::Totals
                  )
                )
              end
              attr_reader :totals

              sig do
                params(
                  totals:
                    Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember0::Data::TopDurationUsers::Totals::OrHash
                ).void
              end
              attr_writer :totals

              sig do
                params(
                  totals:
                    Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember0::Data::TopDurationUsers::Totals::OrHash
                ).returns(T.attached_class)
              end
              def self.new(totals: nil)
              end

              sig do
                override.returns(
                  {
                    totals:
                      Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember0::Data::TopDurationUsers::Totals
                  }
                )
              end
              def to_hash
              end

              class Totals < Onlyfans::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember0::Data::TopDurationUsers::Totals,
                      Onlyfans::Internal::AnyHash
                    )
                  end

                sig { returns(T.nilable(String)) }
                attr_reader :guests

                sig { params(guests: String).void }
                attr_writer :guests

                sig { returns(T.nilable(Integer)) }
                attr_reader :subscribers

                sig { params(subscribers: Integer).void }
                attr_writer :subscribers

                sig { returns(T.nilable(Integer)) }
                attr_reader :total

                sig { params(total: Integer).void }
                attr_writer :total

                sig { returns(T.nilable(String)) }
                attr_reader :users

                sig { params(users: String).void }
                attr_writer :users

                sig do
                  params(
                    guests: String,
                    subscribers: Integer,
                    total: Integer,
                    users: String
                  ).returns(T.attached_class)
                end
                def self.new(
                  guests: nil,
                  subscribers: nil,
                  total: nil,
                  users: nil
                )
                end

                sig do
                  override.returns(
                    {
                      guests: String,
                      subscribers: Integer,
                      total: Integer,
                      users: String
                    }
                  )
                end
                def to_hash
                end
              end
            end

            class Total < Onlyfans::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember0::Data::Total,
                    Onlyfans::Internal::AnyHash
                  )
                end

              sig { returns(T.nilable(String)) }
              attr_reader :current

              sig { params(current: String).void }
              attr_writer :current

              sig { returns(T.nilable(Float)) }
              attr_reader :delta

              sig { params(delta: Float).void }
              attr_writer :delta

              sig do
                params(current: String, delta: Float).returns(T.attached_class)
              end
              def self.new(current: nil, delta: nil)
              end

              sig { override.returns({ current: String, delta: Float }) }
              def to_hash
              end
            end
          end
        end

        class UnionMember1 < Onlyfans::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember1,
                Onlyfans::Internal::AnyHash
              )
            end

          sig do
            returns(
              T.nilable(
                Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember1::Meta
              )
            )
          end
          attr_reader :_meta

          sig do
            params(
              _meta:
                Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember1::Meta::OrHash
            ).void
          end
          attr_writer :_meta

          sig do
            returns(
              T.nilable(
                Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember1::Data
              )
            )
          end
          attr_reader :data

          sig do
            params(
              data:
                Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember1::Data::OrHash
            ).void
          end
          attr_writer :data

          # Chart filter
          sig do
            params(
              _meta:
                Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember1::Meta::OrHash,
              data:
                Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember1::Data::OrHash
            ).returns(T.attached_class)
          end
          def self.new(_meta: nil, data: nil)
          end

          sig do
            override.returns(
              {
                _meta:
                  Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember1::Meta,
                data:
                  Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember1::Data
              }
            )
          end
          def to_hash
          end

          class Meta < Onlyfans::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember1::Meta,
                  Onlyfans::Internal::AnyHash
                )
              end

            sig do
              returns(
                T.nilable(
                  Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember1::Meta::Cache
                )
              )
            end
            attr_reader :_cache

            sig do
              params(
                _cache:
                  Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember1::Meta::Cache::OrHash
              ).void
            end
            attr_writer :_cache

            sig do
              returns(
                T.nilable(
                  Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember1::Meta::Credits
                )
              )
            end
            attr_reader :_credits

            sig do
              params(
                _credits:
                  Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember1::Meta::Credits::OrHash
              ).void
            end
            attr_writer :_credits

            sig do
              returns(
                T.nilable(
                  Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember1::Meta::RateLimits
                )
              )
            end
            attr_reader :_rate_limits

            sig do
              params(
                _rate_limits:
                  Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember1::Meta::RateLimits::OrHash
              ).void
            end
            attr_writer :_rate_limits

            sig do
              params(
                _cache:
                  Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember1::Meta::Cache::OrHash,
                _credits:
                  Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember1::Meta::Credits::OrHash,
                _rate_limits:
                  Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember1::Meta::RateLimits::OrHash
              ).returns(T.attached_class)
            end
            def self.new(_cache: nil, _credits: nil, _rate_limits: nil)
            end

            sig do
              override.returns(
                {
                  _cache:
                    Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember1::Meta::Cache,
                  _credits:
                    Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember1::Meta::Credits,
                  _rate_limits:
                    Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember1::Meta::RateLimits
                }
              )
            end
            def to_hash
            end

            class Cache < Onlyfans::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember1::Meta::Cache,
                    Onlyfans::Internal::AnyHash
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

            class Credits < Onlyfans::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember1::Meta::Credits,
                    Onlyfans::Internal::AnyHash
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

            class RateLimits < Onlyfans::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember1::Meta::RateLimits,
                    Onlyfans::Internal::AnyHash
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

          class Data < Onlyfans::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember1::Data,
                  Onlyfans::Internal::AnyHash
                )
              end

            sig do
              returns(
                T.nilable(
                  Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember1::Data::Chart
                )
              )
            end
            attr_reader :chart

            sig do
              params(
                chart:
                  Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember1::Data::Chart::OrHash
              ).void
            end
            attr_writer :chart

            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :has_stats

            sig { params(has_stats: T::Boolean).void }
            attr_writer :has_stats

            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :is_available

            sig { params(is_available: T::Boolean).void }
            attr_writer :is_available

            sig do
              returns(
                T.nilable(
                  Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember1::Data::Total
                )
              )
            end
            attr_reader :total

            sig do
              params(
                total:
                  Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember1::Data::Total::OrHash
              ).void
            end
            attr_writer :total

            sig do
              params(
                chart:
                  Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember1::Data::Chart::OrHash,
                has_stats: T::Boolean,
                is_available: T::Boolean,
                total:
                  Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember1::Data::Total::OrHash
              ).returns(T.attached_class)
            end
            def self.new(
              chart: nil,
              has_stats: nil,
              is_available: nil,
              total: nil
            )
            end

            sig do
              override.returns(
                {
                  chart:
                    Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember1::Data::Chart,
                  has_stats: T::Boolean,
                  is_available: T::Boolean,
                  total:
                    Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember1::Data::Total
                }
              )
            end
            def to_hash
            end

            class Chart < Onlyfans::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember1::Data::Chart,
                    Onlyfans::Internal::AnyHash
                  )
                end

              sig do
                returns(
                  T.nilable(
                    T::Array[
                      Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember1::Data::Chart::Duration
                    ]
                  )
                )
              end
              attr_reader :duration

              sig do
                params(
                  duration:
                    T::Array[
                      Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember1::Data::Chart::Duration::OrHash
                    ]
                ).void
              end
              attr_writer :duration

              sig do
                returns(
                  T.nilable(
                    T::Array[
                      Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember1::Data::Chart::Visitor
                    ]
                  )
                )
              end
              attr_reader :visitors

              sig do
                params(
                  visitors:
                    T::Array[
                      Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember1::Data::Chart::Visitor::OrHash
                    ]
                ).void
              end
              attr_writer :visitors

              sig do
                params(
                  duration:
                    T::Array[
                      Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember1::Data::Chart::Duration::OrHash
                    ],
                  visitors:
                    T::Array[
                      Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember1::Data::Chart::Visitor::OrHash
                    ]
                ).returns(T.attached_class)
              end
              def self.new(duration: nil, visitors: nil)
              end

              sig do
                override.returns(
                  {
                    duration:
                      T::Array[
                        Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember1::Data::Chart::Duration
                      ],
                    visitors:
                      T::Array[
                        Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember1::Data::Chart::Visitor
                      ]
                  }
                )
              end
              def to_hash
              end

              class Duration < Onlyfans::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember1::Data::Chart::Duration,
                      Onlyfans::Internal::AnyHash
                    )
                  end

                sig { returns(T.nilable(Integer)) }
                attr_reader :count

                sig { params(count: Integer).void }
                attr_writer :count

                sig { returns(T.nilable(String)) }
                attr_reader :date

                sig { params(date: String).void }
                attr_writer :date

                sig do
                  params(count: Integer, date: String).returns(T.attached_class)
                end
                def self.new(count: nil, date: nil)
                end

                sig { override.returns({ count: Integer, date: String }) }
                def to_hash
                end
              end

              class Visitor < Onlyfans::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember1::Data::Chart::Visitor,
                      Onlyfans::Internal::AnyHash
                    )
                  end

                sig { returns(T.nilable(Integer)) }
                attr_reader :count

                sig { params(count: Integer).void }
                attr_writer :count

                sig { returns(T.nilable(String)) }
                attr_reader :date

                sig { params(date: String).void }
                attr_writer :date

                sig do
                  params(count: Integer, date: String).returns(T.attached_class)
                end
                def self.new(count: nil, date: nil)
                end

                sig { override.returns({ count: Integer, date: String }) }
                def to_hash
                end
              end
            end

            class Total < Onlyfans::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember1::Data::Total,
                    Onlyfans::Internal::AnyHash
                  )
                end

              sig { returns(T.nilable(String)) }
              attr_reader :current

              sig { params(current: String).void }
              attr_writer :current

              sig { returns(T.nilable(Float)) }
              attr_reader :delta

              sig { params(delta: Float).void }
              attr_writer :delta

              sig do
                params(current: String, delta: Float).returns(T.attached_class)
              end
              def self.new(current: nil, delta: nil)
              end

              sig { override.returns({ current: String, delta: Float }) }
              def to_hash
              end
            end
          end
        end

        class UnionMember2 < Onlyfans::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember2,
                Onlyfans::Internal::AnyHash
              )
            end

          sig do
            returns(
              T.nilable(
                Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember2::Meta
              )
            )
          end
          attr_reader :_meta

          sig do
            params(
              _meta:
                Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember2::Meta::OrHash
            ).void
          end
          attr_writer :_meta

          sig do
            returns(
              T.nilable(
                Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember2::Data
              )
            )
          end
          attr_reader :data

          sig do
            params(
              data:
                Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember2::Data::OrHash
            ).void
          end
          attr_writer :data

          # Top countries filter
          sig do
            params(
              _meta:
                Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember2::Meta::OrHash,
              data:
                Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember2::Data::OrHash
            ).returns(T.attached_class)
          end
          def self.new(_meta: nil, data: nil)
          end

          sig do
            override.returns(
              {
                _meta:
                  Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember2::Meta,
                data:
                  Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember2::Data
              }
            )
          end
          def to_hash
          end

          class Meta < Onlyfans::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember2::Meta,
                  Onlyfans::Internal::AnyHash
                )
              end

            sig do
              returns(
                T.nilable(
                  Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember2::Meta::Cache
                )
              )
            end
            attr_reader :_cache

            sig do
              params(
                _cache:
                  Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember2::Meta::Cache::OrHash
              ).void
            end
            attr_writer :_cache

            sig do
              returns(
                T.nilable(
                  Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember2::Meta::Credits
                )
              )
            end
            attr_reader :_credits

            sig do
              params(
                _credits:
                  Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember2::Meta::Credits::OrHash
              ).void
            end
            attr_writer :_credits

            sig do
              returns(
                T.nilable(
                  Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember2::Meta::RateLimits
                )
              )
            end
            attr_reader :_rate_limits

            sig do
              params(
                _rate_limits:
                  Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember2::Meta::RateLimits::OrHash
              ).void
            end
            attr_writer :_rate_limits

            sig do
              params(
                _cache:
                  Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember2::Meta::Cache::OrHash,
                _credits:
                  Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember2::Meta::Credits::OrHash,
                _rate_limits:
                  Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember2::Meta::RateLimits::OrHash
              ).returns(T.attached_class)
            end
            def self.new(_cache: nil, _credits: nil, _rate_limits: nil)
            end

            sig do
              override.returns(
                {
                  _cache:
                    Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember2::Meta::Cache,
                  _credits:
                    Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember2::Meta::Credits,
                  _rate_limits:
                    Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember2::Meta::RateLimits
                }
              )
            end
            def to_hash
            end

            class Cache < Onlyfans::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember2::Meta::Cache,
                    Onlyfans::Internal::AnyHash
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

            class Credits < Onlyfans::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember2::Meta::Credits,
                    Onlyfans::Internal::AnyHash
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

            class RateLimits < Onlyfans::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember2::Meta::RateLimits,
                    Onlyfans::Internal::AnyHash
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

          class Data < Onlyfans::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember2::Data,
                  Onlyfans::Internal::AnyHash
                )
              end

            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :has_stats

            sig { params(has_stats: T::Boolean).void }
            attr_writer :has_stats

            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :is_available

            sig { params(is_available: T::Boolean).void }
            attr_writer :is_available

            sig do
              returns(
                T.nilable(
                  Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember2::Data::TopCountries
                )
              )
            end
            attr_reader :top_countries

            sig do
              params(
                top_countries:
                  Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember2::Data::TopCountries::OrHash
              ).void
            end
            attr_writer :top_countries

            sig do
              params(
                has_stats: T::Boolean,
                is_available: T::Boolean,
                top_countries:
                  Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember2::Data::TopCountries::OrHash
              ).returns(T.attached_class)
            end
            def self.new(has_stats: nil, is_available: nil, top_countries: nil)
            end

            sig do
              override.returns(
                {
                  has_stats: T::Boolean,
                  is_available: T::Boolean,
                  top_countries:
                    Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember2::Data::TopCountries
                }
              )
            end
            def to_hash
            end

            class TopCountries < Onlyfans::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember2::Data::TopCountries,
                    Onlyfans::Internal::AnyHash
                  )
                end

              sig { returns(T.nilable(T::Boolean)) }
              attr_reader :has_more

              sig { params(has_more: T::Boolean).void }
              attr_writer :has_more

              sig do
                returns(
                  T.nilable(
                    T::Array[
                      Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember2::Data::TopCountries::Row
                    ]
                  )
                )
              end
              attr_reader :rows

              sig do
                params(
                  rows:
                    T::Array[
                      Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember2::Data::TopCountries::Row::OrHash
                    ]
                ).void
              end
              attr_writer :rows

              sig do
                returns(
                  T.nilable(
                    Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember2::Data::TopCountries::Totals
                  )
                )
              end
              attr_reader :totals

              sig do
                params(
                  totals:
                    Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember2::Data::TopCountries::Totals::OrHash
                ).void
              end
              attr_writer :totals

              sig do
                params(
                  has_more: T::Boolean,
                  rows:
                    T::Array[
                      Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember2::Data::TopCountries::Row::OrHash
                    ],
                  totals:
                    Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember2::Data::TopCountries::Totals::OrHash
                ).returns(T.attached_class)
              end
              def self.new(has_more: nil, rows: nil, totals: nil)
              end

              sig do
                override.returns(
                  {
                    has_more: T::Boolean,
                    rows:
                      T::Array[
                        Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember2::Data::TopCountries::Row
                      ],
                    totals:
                      Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember2::Data::TopCountries::Totals
                  }
                )
              end
              def to_hash
              end

              class Row < Onlyfans::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember2::Data::TopCountries::Row,
                      Onlyfans::Internal::AnyHash
                    )
                  end

                sig { returns(T.nilable(String)) }
                attr_reader :country_code

                sig { params(country_code: String).void }
                attr_writer :country_code

                sig { returns(T.nilable(String)) }
                attr_reader :country_name

                sig { params(country_name: String).void }
                attr_writer :country_name

                sig { returns(T.nilable(Integer)) }
                attr_reader :rank

                sig { params(rank: Integer).void }
                attr_writer :rank

                sig do
                  returns(
                    T.nilable(
                      Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember2::Data::TopCountries::Row::ViewsCount
                    )
                  )
                end
                attr_reader :views_count

                sig do
                  params(
                    views_count:
                      Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember2::Data::TopCountries::Row::ViewsCount::OrHash
                  ).void
                end
                attr_writer :views_count

                sig do
                  params(
                    country_code: String,
                    country_name: String,
                    rank: Integer,
                    views_count:
                      Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember2::Data::TopCountries::Row::ViewsCount::OrHash
                  ).returns(T.attached_class)
                end
                def self.new(
                  country_code: nil,
                  country_name: nil,
                  rank: nil,
                  views_count: nil
                )
                end

                sig do
                  override.returns(
                    {
                      country_code: String,
                      country_name: String,
                      rank: Integer,
                      views_count:
                        Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember2::Data::TopCountries::Row::ViewsCount
                    }
                  )
                end
                def to_hash
                end

                class ViewsCount < Onlyfans::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember2::Data::TopCountries::Row::ViewsCount,
                        Onlyfans::Internal::AnyHash
                      )
                    end

                  sig { returns(T.nilable(Integer)) }
                  attr_reader :guests

                  sig { params(guests: Integer).void }
                  attr_writer :guests

                  sig { returns(T.nilable(Integer)) }
                  attr_reader :subscribers

                  sig { params(subscribers: Integer).void }
                  attr_writer :subscribers

                  sig { returns(T.nilable(Integer)) }
                  attr_reader :total

                  sig { params(total: Integer).void }
                  attr_writer :total

                  sig { returns(T.nilable(Integer)) }
                  attr_reader :users

                  sig { params(users: Integer).void }
                  attr_writer :users

                  sig do
                    params(
                      guests: Integer,
                      subscribers: Integer,
                      total: Integer,
                      users: Integer
                    ).returns(T.attached_class)
                  end
                  def self.new(
                    guests: nil,
                    subscribers: nil,
                    total: nil,
                    users: nil
                  )
                  end

                  sig do
                    override.returns(
                      {
                        guests: Integer,
                        subscribers: Integer,
                        total: Integer,
                        users: Integer
                      }
                    )
                  end
                  def to_hash
                  end
                end
              end

              class Totals < Onlyfans::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember2::Data::TopCountries::Totals,
                      Onlyfans::Internal::AnyHash
                    )
                  end

                sig { returns(T.nilable(String)) }
                attr_reader :guests

                sig { params(guests: String).void }
                attr_writer :guests

                sig { returns(T.nilable(Integer)) }
                attr_reader :subscribers

                sig { params(subscribers: Integer).void }
                attr_writer :subscribers

                sig { returns(T.nilable(Integer)) }
                attr_reader :total

                sig { params(total: Integer).void }
                attr_writer :total

                sig { returns(T.nilable(String)) }
                attr_reader :users

                sig { params(users: String).void }
                attr_writer :users

                sig do
                  params(
                    guests: String,
                    subscribers: Integer,
                    total: Integer,
                    users: String
                  ).returns(T.attached_class)
                end
                def self.new(
                  guests: nil,
                  subscribers: nil,
                  total: nil,
                  users: nil
                )
                end

                sig do
                  override.returns(
                    {
                      guests: String,
                      subscribers: Integer,
                      total: Integer,
                      users: String
                    }
                  )
                end
                def to_hash
                end
              end
            end
          end
        end

        sig do
          override.returns(
            T::Array[
              Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::Variants
            ]
          )
        end
        def self.variants
        end
      end
    end
  end
end
