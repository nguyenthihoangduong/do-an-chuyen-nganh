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
        // GET: ThanhToan
        public ActionResult Index()
        {
            ViewBag.MaPTTT = new SelectList(PTTTBUS.DanhSachPT(), "MaPTTT", "TenPTTT");
            return View();
        }   
        
        // POST: Admin/HoaDonAdmin/Create
        [HttpPost]
        public ActionResult Index(ThanhToan tt)
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