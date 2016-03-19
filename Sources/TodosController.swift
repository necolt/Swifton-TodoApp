import Swifton

class TodosController: ApplicationController { 
    var todo: Todo?    
    override func controller() {

    beforeAction("setTodo", ["only": ["show", "edit", "update", "destroy"]])

    action("index") { request in
        let todos = ["todos": Todo.allAttributes()]
        return respondTo(request, [
            "html": { render("Todos/Index", todos) },
            "json": { renderJSON(todos) }
        ])
    }

    action("show") { request in
        return render("Todos/Show", self.todo)
    }

    action("new") { request in
        return render("Todos/New")
    }

    action("edit") { request in
        return render("Todos/Edit", self.todo)
    } 
    action("create") { request in
        Todo.create(request.params)
        return redirectTo("/todos")
    }

    action("update") { request in
        self.todo!.update(request.params)
        return redirectTo("/todos/\(self.todo!.id)")
    }

    action("destroy") { request in
        Todo.destroy(self.todo)
        return redirectTo("/todos")
    }

    filter("setTodo") { request in
        guard let t = Todo.find(request.params["id"]) else { return redirectTo("/todos") }
        self.todo = t as? Todo
        return self.next
    }
}}
