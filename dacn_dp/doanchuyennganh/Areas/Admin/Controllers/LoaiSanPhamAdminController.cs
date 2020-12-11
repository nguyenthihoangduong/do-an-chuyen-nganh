using doanchuyennganh.Models.BUS;
using PetproShopConnection;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace doanchuyennganh.Areas.Admin.Controllers
{
    public class LoaiSanPhamAdminController : Controller
    {
        [Authorize(Roles = "Admin")]
        // GET: Admin/LoaiSanPhamAdmin
        public ActionResult Index()
        {
            var db = CuaHangBUS.DanhSachLSPAdmin();
            return View(db);
        }

        // GET: Admin/LoaiSanPhamAdmin/Details/5
        public ActionResult Details(int id)
        {
            return View();
        }

        // GET: Admin/LoaiSanPhamAdmin/Create

        public ActionResult Create()
        {
            return View();
        }

        // POST: Admin/LoaiSanPhamAdmin/Create
        [HttpPost]
        public ActionResult Create(LoaiSanPham lsp)
        {
            try
            {
                // TODO: Add insert logic here
                CuaHangBUS.ThemLSP(lsp);
                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }
        //------------------------------------------------------------------------------

        //public ActionResult Create()
        //{
        //    return View();
        //}

        //// POST: Admin/NhaSanXuat/Create
        //[HttpPost]
        //public ActionResult Create(LoaiSanPham lsp)
        //{
        //    try
        //    {
        //        // TODO: Add insert logic here
        //        CuaHangBUS.ThemLSP(lsp);
        //        return RedirectToAction("Index");
        //    }
        //    catch
        //    {
        //        return View();
        //    }
        //}

        //------------------------------------------------------------------------------

        // GET: Admin/LoaiSanPhamAdmin/Edit/5
        public ActionResult Edit(String id)
        {
            return View(CuaHangBUS.ChiTietLSPAdmin(id));
        }

        // POST: Admin/LoaiSanPhamAdmin/Edit/5
        [HttpPost]
        public ActionResult Edit(String id, LoaiSanPham lsp)
        {
            try
            {
                // TODO: Add update logic here

                CuaHangBUS.UpdateLSP(id, lsp);
                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        public ActionResult XoaTamThoiLSP(String id)
        {
            return View(CuaHangBUS.ChiTietLSPAdmin(id));
        }
        [HttpPost]
        public ActionResult XoaTamThoiLSP(String id, LoaiSanPham lsp)
        {
            try
            {
                // TODO: Add delete logic here
                lsp.TinhTrang = "1";
                CuaHangBUS.UpdateLSP(id, lsp);

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        // GET: Admin/LoaiSanPhamAdmin/Delete/5
        public ActionResult Delete(int id)
        {
            return View();
        }

        // POST: Admin/LoaiSanPhamAdmin/Delete/5
        [HttpPost]
        public ActionResult Delete(int id, FormCollection collection)
        {
            try
            {
                // TODO: Add delete logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }
    }
}
