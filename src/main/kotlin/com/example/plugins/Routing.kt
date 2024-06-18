package com.example.plugins

import io.ktor.server.application.*
import io.ktor.server.freemarker.*
import io.ktor.server.http.content.*
import io.ktor.server.request.*
import io.ktor.server.response.*
import io.ktor.server.routing.*

val comments = mutableListOf(
    "The first comment"
)

fun Application.configureRouting() {
    routing {
        get("/") {
            call.respond(FreeMarkerContent(
                "index.ftl",
                mapOf("comments" to comments)
            ))
        }
        post("/") {
            val formParams = call.receiveParameters()
            val comment = formParams["comment"] ?: ""
            comments.add(comment)
            call.respondRedirect("/")
        }
        staticResources("/static", "files")
    }
}
