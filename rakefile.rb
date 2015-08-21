require 'dev'

task :publish do
	Git.tag File.dirname(__FILE__),VERSION
	puts `nuget push HelloCSharpLibrary.#{VERSION}.nupkg`
end