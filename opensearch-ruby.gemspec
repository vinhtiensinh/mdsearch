# SPDX-License-Identifier: Apache-2.0
#
# The OpenSearch Contributors require contributions made to
# this file be licensed under the Apache-2.0 license or a
# compatible open source license.
#
# Modifications Copyright OpenSearch Contributors. See
# GitHub history for details.
#
# Licensed to Elasticsearch B.V. under one or more contributor
# license agreements. See the NOTICE file distributed with
# this work for additional information regarding copyright
# ownership. Elasticsearch B.V. licenses this file to you under
# the Apache License, Version 2.0 (the "License"); you may
# not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#   http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing,
# software distributed under the License is distributed on an
# "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
# KIND, either express or implied.  See the License for the
# specific language governing permissions and limitations
# under the License.

require_relative './lib/opensearch/version'

Gem::Specification.new do |s|
  s.name          = 'opensearch-ruby'
  s.version       = OpenSearch::VERSION
  s.authors       = ['Jayesh Hathila', 'Vamshi Vijay Nakkirtha', 'Vijayan Balasubramanian', 'Yuvraj Jaiswal', 'Theo Truong']
  s.email         = %w[jayehh@amazon.com vamshin@amazon.com balasvij@amazon.com jaiyuvra@amazon.com theo.nam.truong@gmail.com]
  s.summary       = 'Ruby Client for OpenSearch'
  s.homepage      = 'https://github.com/opensearch-project/opensearch-ruby'
  s.license       = 'Apache-2.0'
  s.metadata = {
    'homepage_uri' => 'https://github.com/opensearch-project/opensearch-ruby',
    'documentation_uri' => 'https://rubydoc.info/gems/opensearch-ruby',
    'source_code_uri' => 'https://github.com/opensearch-project/opensearch-ruby/tree/main',
    'bug_tracker_uri' => 'https://github.com/opensearch-project/opensearch-ruby/issues',
    'changelog_uri' => 'https://github.com/opensearch-project/opensearch-ruby/blob/main/CHANGELOG.md',
    'rubygems_mfa_required' => 'true'
  }

  s.files         = Dir['lib/**/*']
  s.test_files    = Dir['spec**/*', 'test/**/*', 'features/**/*']
  s.require_paths = ['lib']
  s.bindir        = 'bin'
  s.executables   = 'opensearch_ruby_console'

  s.extra_rdoc_files  = %w[README.md USER_GUIDE.md LICENSE.txt]
  s.rdoc_options      = ['--charset=UTF-8']

  signing_key = File.expand_path('gem-private_key.pem')
  if $PROGRAM_NAME.end_with?('gem') && ARGV == ['build', __FILE__] && File.exist?(signing_key)
    s.signing_key = signing_key
    s.cert_chain  = ['.github/opensearch-rubygems.pem']
  end

  s.add_dependency 'multi_json'
end
