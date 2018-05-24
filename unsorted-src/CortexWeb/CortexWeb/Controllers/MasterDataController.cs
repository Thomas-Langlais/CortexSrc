using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace CortexWeb.Controllers
{
    public class MasterDataController : Controller
    {
        // GET: MasterData
        public ActionResult Index()
        {
            return View();
        }
    }
}