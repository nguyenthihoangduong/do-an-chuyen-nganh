using doanchuyennganh.Models.BUS;
using PetproShopConnection;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace doanchuyennganh.Areas.Admin.Controllers
{
    public class HoaDonAdminController : Controller
    {
        // GET: Admin/HoaDonAdmin
        [Authorize(Roles = "Admin")]
        // GET: Admin/HoaDon
        public ActionResult Index()
        {
            var ds = ThanhToanBUS.DanhSachHD();
            return View(ds);
        }

        // GET: Admin/HoaDonAdmin/Details/5
        public ActionResult Details(int id)
        {
            return View();
        }

        // GET: Admin/HoaDonAdmin/Create
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

        // GET: Admin/HoaDonAdmin/Edit/5
        public ActionResult Edit(String id)
        {
            ViewBag.MaPTTT = new SelectList(PTTTBUS.DanhSachPT(), "MaPTTT", "TenPTTT", ThanhToanBUS.ChiTietKH(id).MaPTTT);
            return View(ThanhToanBUS.ChiTietKH(id));
        }

        // POST: Admin/HoaDonAdmin/Edit/5
        [HttpPost]
        public ActionResult Edit(String id, ThanhToan tt)
        {
            try
            {
                // TODO: Add update logic here
                ThanhToanBUS.UpdateHD(id, tt);
                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        // GET: Admin/HoaDonAdmin/Delete/5        
        public ActionResult XoaTamThoi(String id)
        {
            return View(ThanhToanBUS.ChiTietKH(id));
        }

        // POST: Admin/HoaDonAdmin/Delete/5
        [HttpPost]
        public ActionResult XoaTamThoi(String id, ThanhToan tt)
        {
            try
            {
                // TODO: Add delete logic here
                tt.TinhTrang = "1";
                ThanhToanBUS.UpdateHD(id, tt);

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }
    }
}
