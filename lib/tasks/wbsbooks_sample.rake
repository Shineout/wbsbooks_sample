require 'spree_core'
require 'wbslogistic/wbsbooks_sample'

namespace :wbsbooks_sample do
  desc 'Loads books sample data'
  task :load => :environment do
    if ARGV.include?("db:migrate")
      puts %Q{
Please run db:migrate separately from wbsbooks_sample:load.

Running db:migrate and wbsbooks_sample:load at the same time has been known to
cause problems where columns may be not available during sample data loading.

Migrations have been run. Please run "rake wbsbooks_sample:load" by itself now.
      }
      exit(1)
    end

    WbsbooksSample::Engine.load_wbsbooks_samples
  end
end


