import Swifton
import Curassow

let router = Router()
router.resources("todos", TodosController())

serve { router.respond($0) }

