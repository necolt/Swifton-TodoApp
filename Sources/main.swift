import Swifton
import HTTPServer

let router = Router.create { route in
    route.resources("todos", controller: TodosController())
    route.get("/", respond: TodosController()["index"])
}

try Server(responder: router).start()

