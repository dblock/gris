# require external libraries
require 'rake'
require 'yaml'
require 'grape'
require 'json'
require 'roar'
require 'grape-roar'
require 'roar/representer'
require 'roar/json'
require 'roar/json/hal'
require 'hashie-forbidden_attributes'

# require internal files
require 'gris/application'
require 'gris/caching'
require 'gris/grape_extensions/crud_helpers'
require 'gris/grape_extensions/date_time_helpers'
require 'gris/grape_extensions/error_helpers'
require 'gris/identity'
require 'gris/middleware/health'
require 'gris/middleware/error_handlers'
require 'gris/output_formatters/paginated_presenter'
require 'gris/output_formatters/presenter'
require 'gris/output_formatters/presenter_link_helpers'
require 'gris/seed_loader'
require 'gris/setup'
require 'gris/version'

# load rake tasks if Rake installed
if defined?(Rake)
  load 'tasks/routes.rake'
  load 'tasks/db.rake'
end
