import Swifton

class TodosController: ApplicationController { 
    var todo: Todo?    
    override init() { super.init()

    beforeAction("setTodo", ["only": ["show", "edit", "update", "destroy"]])

    action("index") { request in
        let todos = ["todos": Todo.allAttributes()]
        return self.respondTo(request, [
            "html": { self.render("Todos/Index", todos) },
            "json": { self.renderJSON(todos) }
        ])
    }

    action("show") { request in
        return self.render("Todos/Show", self.todo)
    }

    action("new") { request in
        return self.render("Todos/New")
    }

    action("edit") { request in
        return self.render("Todos/Edit", self.todo)
    } 
    action("create") { request in
        Todo.create(request.params)
        return self.redirectTo("/todos")
    }

    action("update") { request in
        self.todo!.update(request.params)
        return self.redirectTo("/todos/\(self.todo!.id)")
    }

    action("destroy") { request in
        Todo.destroy(self.todo)
        return self.redirectTo("/todos")
    }

    filter("setTodo") { request in
        guard let t = Todo.find(request.params["id"]) else { return self.redirectTo("/todos") } 
        self.todo = t as? Todo
        return self.next
    }
}}
