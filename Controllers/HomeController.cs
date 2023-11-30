using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using Hotsite.Models;

namespace Hotsite.Controllers
{
    public class HomeController : Controller
    {
        private readonly ILogger<HomeController> _logger;

        public HomeController(ILogger<HomeController> logger)
        {
            _logger = logger;
        }

        public IActionResult Index()
        {
            return View();
        }

        [HttpPost]
        public IActionResult Cadastrar(Interesse cad)
        {
            if (ModelState.IsValid)
            {
                try
                {
                    DatabaseService dbs = new DatabaseService();
                    dbs.CadastraInteresse(cad);
                    TempData["Message"] = "Cadastro realizado com sucesso!";
                    return Json(new { success = "Sucesso!" });
                }
                catch (Exception e)
                {
                    TempData["Message"] = "Ocorreu um erro. Por favor, tente novamente mais tarde.";
                    _logger.LogError("Erro ao cadastrar. Por favor, tente novamente mais tarde");
                    return StatusCode(500, new { error = "Erro!", e.Message });
                }
            }
            else
            {
                return Json(new { error = "ModelState is invalid." });
            }
            // return View("Index", cad);
        }

        // [HttpPost]
        // public IActionResult Cadastrar(Interesse cad)
        // {
        //     DatabaseService dbs = new DatabaseService();
        //     dbs.CadastraInteresse(cad);
        //     return View("Index", cad);
        // }

    }
}
