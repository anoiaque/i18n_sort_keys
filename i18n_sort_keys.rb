require 'yaml'

class Hash
  
  def to_yaml( opts = {} )
    YAML::quick_emit( object_id, opts ) do |out|
      out.map( taguri, to_yaml_style ) do |map|
        sort.each do |k, v|
          map.add( k, v )
        end
      end
    end
  end
  
end

namespace :i18n do

  desc "Sort locales keys in alphabetic order"
  
  task :sort_keys, [:path_to_file] => :environment do |t , args|
    locales = args[:path_to_file] || Dir.glob("#{RAILS_ROOT}/config/locales/**/*.yml")

    locales.each do |locale_path|
      yaml = File.open(locale_path) { |f| YAML::load(f) }
      File.open(locale_path, 'w') { |f|  YAML.dump(yaml, f)}
    end
  end
end