# ---
# resources:
# - type: file
#   name: /tmp/tmpfile1
# - type: file
#   name: /tmp/will-not-create-due-to-guard
#   only_if: windows?
# - type: file
#   name: /tmp/should-be-created
#   not_if: windows?
# - type: execute
#   name: exec_block1
#   command: echo 'Cookbook has run and done things.'

file '/tmp/tmpfile1'
file '/tmp/should-be-created' unless windows?
execute "echo 'Cookbook has run and done things.'"
ruby_block 'show_chef_config' do
  block do
    puts
    puts Chef::Config
  end
  action :run
end
