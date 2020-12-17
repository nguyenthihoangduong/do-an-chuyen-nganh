using doanchuyennganh.Models.BUS;
using PagedList;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace doanchuyennganh.Controllers
{
    public class CuaHangController : Controller
    {
        // GET: CuaHang
        public ActionResult Index(String id, int page = 1, int pagesize = 9)
        {
            var ds = CuaHangBUS.ChiTiet(id).ToPagedList(page, pagesize);
            return View(ds);
        }
    }
}