=begin
    Copyright 2010-2012 Tasos Laskos <tasos.laskos@gmail.com>

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
=end

class Arachni::Reports::Stdout

#
# Stdout formatter for the results of the TimingAttacks plugin.
#
# @author Tasos "Zapotek" Laskos <tasos.laskos@gmail.com>
#
class PluginFormatters::TimingAttacks < Arachni::Plugin::Formatter

    def run
        print_info 'Relevant issues:'
        print_info '--------------------'
        results.each do |issue|
            print_ok "[\##{issue['index']}] #{issue['name']} at " +
                "#{issue['url']} in #{issue['elem']} variable" +
                " '#{issue['var']}' using #{issue['method']}."
        end
    end

end
end
