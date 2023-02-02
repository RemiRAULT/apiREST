module.exports = app => {
    const etapes = require("../controllers/etape.controller.js");
  
    var router = require("express").Router();
  
    // Create a new etape
    router.post("/", etapes.create);
  
    // Retrieve all etapes
    router.get("/", etapes.findAll);
  
    // Retrieve all published etapes
    router.get("/published", etapes.findAllPublished);
  
    // Retrieve a single etape with id
    router.get("/:id", etapes.findOne);
  
    // Update a etape with id
    router.put("/:id", etapes.update);
  
    // Delete a etape with id
    router.delete("/:id", etapes.delete);
  
    // Delete all etapes
    router.delete("/", etapes.deleteAll);
  
    app.use('/api/etapes', router);
  };