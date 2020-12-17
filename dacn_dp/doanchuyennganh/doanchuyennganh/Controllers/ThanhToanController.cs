using doanchuyennganh.Models.BUS;
using PetproShopConnection;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace doanchuyennganh.Controllers
{
    public class ThanhToanController : Controller
    {
        public ActionResult Index()
        {
            var ds = ThanhToanBUS.DanhSachHD();
            return View(ds);
        }

        // GET: ThanhToan
        public ActionResult Create()
        {
            ViewBag.MaPTTT = new SelectList(PTTTBUS.DanhSachPT(), "MaPTTT", "TenPTTT");
            return View();
        }   
        
        // POST: Admin/HoaDonAdmin/Create
        [HttpPost]
        public ActionResult Create(ThanhToan tt)
        {
            try
            {
                // TODO: Add insert logic here
                ThanhToanBUS.ThemHD(tt);
                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }
    }
}