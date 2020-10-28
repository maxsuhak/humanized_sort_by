require 'humanized_sort_by/version'
require 'active_support/core_ext/hash'

class Array
  class Error < StandardError; end

  def humanized_sort_by(key)
    sort_by do |item|
      item.with_indifferent_access[key].to_s.split(/(\d+)/).map do |v|
        v =~ /\d/ ? v.to_i : v.to_s.downcase
      end
    end
  end
end
