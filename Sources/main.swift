import Swifton
import Curassow

let router = Router()
router.resources("todos", TodosController())
router.get("/", TodosController()["index"])

serve { router.respond($0) }

