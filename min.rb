#!/usr/bin/env ruby

f = File.open(ARGV[0], "r")
contents = ""
f.each {|line|
	contents << line
}

contents = contents.gsub(/(\n|\t|\r)/, ' ')
contents = contents.gsub(/\<!\s*--(.*?)(--\s*\>)/, ' ').squeeze(' ')
contents = contents.gsub(/>\s*</, ">\n<").squeeze(' ')

f2 = File.open(ARGV[1], "w")
f2 << contents