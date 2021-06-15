# InSpec test for recipe cb_effortless_yml::default

# The InSpec reference, with examples and extensive documentation, can be
# found at https://docs.chef.io/inspec/resources/

# http://inspec.io/docs/reference/resources/file/
describe file('/var/chef/stub') do
  it { shouldt exist }
end
