require 'shellwords'

module VagrantPlugins
  module AnsibleInventory
    module Cap
      module Guest
        module POSIX
          class ExecutableInstalled
            class << self
              def executable_installed?(machine, executable)
                machine.communicate.test(%Q[test -x "$(command -v #{executable.shellescape})"], error_check: false)
              end
            end
          end
        end
      end
    end
  end
end