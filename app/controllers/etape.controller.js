const Etape = require("../models/etape.model.js");

// Create and Save a new etape
exports.create = (req, res) => {
  
};

// Retrieve all etapes from the database (with condition).
exports.findAll = (req, res) => {
  
};

// Find a single etape with a id
exports.findOne = (req, res) => {
  
};

// find all published etapes
exports.findAllPublished = (req, res) => {
  
};

// Update a etape identified by the id in the request
exports.update = (req, res) => {
  
};

// Delete a etape with the specified id in the request
exports.delete = (req, res) => {
  
};

// Delete all etapes from the database.
exports.deleteAll = (req, res) => {
  
};

exports.create = (req, res) => {
    // Validate request
    if (!req.body) {
      res.status(400).send({
        message: "Content can not be empty!"
      });
    }
  
    // Create a etape
    const etape = new Etape({
      date: req.body.date,
      etape: req.body.etape,
      km: req.body.km,
      type: req.body.type,
      remarque: req.body.remarque,
      
    });
  
    // Save etape in the database
    Etape.create(etape, (err, data) => {
      if (err)
        res.status(500).send({
          message:
            err.message || "Some error occurred while creating the etape."
        });
      else res.send(data);
    });
  };

  // Retrieve all etapes from the database (with condition).
exports.findAll = (req, res) => {
    const title = req.body.etape;
  
    Etape.getAll(title, (err, data) => {
      if (err)
        res.status(500).send({
          message:
            err.message || "Some error occurred while retrieving etapes."
        });
      else res.send(data);
    });
  };
  
  exports.findAllPublished = (req, res) => {
    Etape.getAllPublished((err, data) => {
      if (err)
        res.status(500).send({
          message:
            err.message || "Some error occurred while retrieving etapes."
        });
      else res.send(data);
    });
  };

  exports.findOne = (req, res) => {
    Etape.findById(req.params.id, (err, data) => {
      if (err) {
        if (err.kind === "not_found") {
          res.status(404).send({
            message: `Not found etape with id ${req.params.id}.`
          });
        } else {
          res.status(500).send({
            message: "Error retrieving etape with id " + req.params.id
          });
        }
      } else res.send(data);
    });
  };

  exports.update = (req, res) => {
    // Validate Request
    if (!req.body) {
      res.status(400).send({
        message: "Content can not be empty!"
      });
    }
  
    console.log(req.body);
  
    Etape.updateById(
      req.params.id,
      new Etape(req.body),
      (err, data) => {
        if (err) {
          if (err.kind === "not_found") {
            res.status(404).send({
              message: `Not found etape with id ${req.params.id}.`
            });
          } else {
            res.status(500).send({
              message: "Error updating etape with id " + req.params.id
            });
          }
        } else res.send(data);
      }
    );
  };

  exports.delete = (req, res) => {
    Etape.remove(req.params.id, (err, data) => {
      if (err) {
        if (err.kind === "not_found") {
          res.status(404).send({
            message: `Not found etape with id ${req.params.id}.`
          });
        } else {
          res.status(500).send({
            message: "Could not delete etape with id " + req.params.id
          });
        }
      } else res.send({ message: `etape was deleted successfully!` });
    });
  };

  exports.deleteAll = (req, res) => {
    Etape.removeAll((err, data) => {
      if (err)
        res.status(500).send({
          message:
            err.message || "Some error occurred while removing all etapes."
        });
      else res.send({ message: `All etapes were deleted successfully!` });
    });
  };