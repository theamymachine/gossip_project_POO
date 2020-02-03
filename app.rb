require_relative './lib/controller.rb'
require_relative './lib/router.rb'
require_relative './lib/gossip.rb'

router = Router.new()
router.perform
