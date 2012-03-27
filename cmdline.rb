#!/usr/bin/env ruby

require 'optparse'

def do_something(options)
  @enum, @int, @float, @list = options[:enum], options[:int], options[:float], options[:list]
  puts("enum=#{@enum}|int=#{@int}|float=#{@float || '<value not set>'}|@list=#{@list}")
end

def main
  options = {}

  ARGV.options do |opts|
    script_name = File.basename($0)
    opts.banner = 'Optparse Script Template'
    opts.define_head("Usage: #{script_name} [OPTIONS]",
                     'Example', "#{script_name} -e val1 -i 1000 -f 2.35 -l foo,bar,baz")

    opts.separator('')

    # enumeration
    opts.on('-e', '--enumeration ENUM', [:val1, :val2],
            'val1 : Value1 description.',
            'val2 : Value2 description.')  { |v| options[:enum] = v }

    # integer
    opts.on('-i', '--integer INT', Integer, "An integer." )  { |v| options[:int] = v }

    # float (value optional)
    opts.on('-f', '--float [FLOAT]', Float, "A float." )  { |v| options[:float] = v }

    # list
    opts.on('-l', '--list e1,e2,e3', Array, "A list of things." )  { |v| options[:list] = v }

    opts.separator('')

    opts.on_tail('-h', '--help', 'Show this help message.') do
      puts(opts)
      exit(0)
    end
    opts.parse!()
  end

  begin
    raise "Unknown option(s) #{ARGV.join(', ')}" if ARGV.any?()
    raise "Enum option is missing" if !options.key?(:enum)
    raise "Integer option is missing" if !options.key?(:int)
    raise "Float option is missing" if !options.key?(:float)
    raise "List option is missing" if !options.key?(:list)
  rescue Exception => ex
    puts "#{ex.message()}. Please use -h or --h for usage."
    exit(1)
  end

  begin
    do_something(options)
  rescue Exception => ex
    puts("Error while executing script: #{ex.message}")
    puts("Trace: #{ex.backtrace().join($/)}")
  end
end

if __FILE__ == $0
  main
end
