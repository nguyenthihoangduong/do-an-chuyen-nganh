using doanchuyennganh.Models.BUS;
using PetproShopConnection;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace doanchuyennganh.Areas.Admin.Controllers
{
    public class SanPhamAdminController : Controller
    {
        [Authorize(Roles = "Admin")]
        // GET: Admin/SanPham
        public ActionResult Index()
        {

            return View(PetproShopBUS.DanhSachSP());
        }

        // GET: Admin/SanPham/Details/5
        public ActionResult Details(int id)
        {
            return View();
        }

        // GET: Admin/SanPham/Create
        public ActionResult Create()
        {
            ViewBag.MaNSX = new SelectList(NhaSanXuatBUS.DanhSach(), "MaNSX", "TenNSX");
            ViewBag.MaLoaiSP = new SelectList(CuaHangBUS.DanhSach(), "MaLoaiSP", "TenLoaiSP");
            return View();
        }

        // POST: Admin/SanPham/Create
        [HttpPost]
        public ActionResult Create(SanPham sp)
        {
            try
            {
                var hpf = HttpContext.Request.Files[0];
                if (hpf.ContentLength > 0)
                {
                    string fileName = sp.MaSP;
                    string fullPathWithFileName = "~/Asset/img/" + fileName + ".png";
                    hpf.SaveAs(Server.MapPath(fullPathWithFileName));
                    sp.HinhChinh = sp.MaSP + ".png";
                }

                hpf = HttpContext.Request.Files[1];
                if (hpf.ContentLength > 0)
                {
                    string fileName = sp.MaSP;
                    string fullPathWithFileName = "~/Asset/img/" + fileName + "_1.png";
                    hpf.SaveAs(Server.MapPath(fullPathWithFileName));
                    sp.Hinh1 = sp.MaSP + "_1.png";
                }
                hpf = HttpContext.Request.Files[2];
                if (hpf.ContentLength > 0)
                {
                    string fileName = sp.MaSP;
                    string fullPathWithFileName = "~/Asset/img/" + fileName + "_2.png";
                    hpf.SaveAs(Server.MapPath(fullPathWithFileName));
                    sp.Hinh2 = sp.MaSP + "_2.png";
                }
                hpf = HttpContext.Request.Files[3];
                if (hpf.ContentLength > 0)
                {
                    string fileName = sp.MaSP;
                    string fullPathWithFileName = "~/Asset/img/" + fileName + "_3.png";
                    hpf.SaveAs(Server.MapPath(fullPathWithFileName));
                    sp.Hinh3 = sp.MaSP + "_3.png";
                }
                hpf = HttpContext.Request.Files[4];
                if (hpf.ContentLength > 0)
                {
                    string fileName = sp.MaSP;
                    string fullPathWithFileName = "~/Asset/img/" + fileName + "_4.png";
                    hpf.SaveAs(Server.MapPath(fullPathWithFileName));
                    sp.Hinh4 = sp.MaSP + "_4.png";
                }


                sp.TinhTrang = "0";
                sp.SLDaBan = 0;
                sp.LuotView = 0;
                // TODO: Add insert logic here
                PetproShopBUS.ThemSP(sp);
                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        // GET: Admin/SanPham/Edit/5
        public ActionResult Edit(string id)
        {
            ViewBag.MaNSX = new SelectList(NhaSanXuatBUS.DanhSach(), "MaNSX", "TenNSX", PetproShopBUS.ChiTiet(id).MaNSX);
            ViewBag.MaLoaiSP = new SelectList(CuaHangBUS.DanhSach(), "MaLoaiSP", "TenLoaiSP", PetproShopBUS.ChiTiet(id).MaLoaiSP);
            return View(PetproShopBUS.ChiTiet(id));
        }

        // POST: Admin/SanPham/Edit/5
        [HttpPost]
        public ActionResult Edit(string id, SanPham sp)
        {
            var tam = PetproShopBUS.ChiTiet(id);
            try
            {
                var hpf = HttpContext.Request.Files[0];
                if (hpf.ContentLength > 0)
                {
                    string fileName = sp.MaSP;
                    string fullPathWithFileName = "~/Asset/img/" + fileName + ".png";
                    hpf.SaveAs(Server.MapPath(fullPathWithFileName));
                    sp.HinhChinh = sp.MaSP + ".png";
                }
                else { sp.HinhChinh = tam.HinhChinh; }
                hpf = HttpContext.Request.Files[1];
                if (hpf.ContentLength > 0)
                {
                    string fileName = sp.MaSP;
                    string fullPathWithFileName = "~/Asset/img/" + fileName + "_1.png";
                    hpf.SaveAs(Server.MapPath(fullPathWithFileName));
                    sp.Hinh1 = sp.MaSP + "_1.png";
                }
                else
                { sp.Hinh1 = tam.Hinh1; }
                hpf = HttpContext.Request.Files[2];
                if (hpf.ContentLength > 0)
                {
                    string fileName = sp.MaSP;
                    string fullPathWithFileName = "~/Asset/img/" + fileName + "_2.png";
                    hpf.SaveAs(Server.MapPath(fullPathWithFileName));
                    sp.Hinh2 = sp.MaSP + "_2.png";
                }
                else
                { sp.Hinh2 = tam.Hinh2; }
                hpf = HttpContext.Request.Files[3];
                if (hpf.ContentLength > 0)
                {
                    string fileName = sp.MaSP;
                    string fullPathWithFileName = "~/Asset/img/" + fileName + "_3.png";
                    hpf.SaveAs(Server.MapPath(fullPathWithFileName));
                    sp.Hinh3 = sp.MaSP + "_3.png";
                }
                else
                { sp.Hinh3 = tam.Hinh3; }
                hpf = HttpContext.Request.Files[4];
                if (hpf.ContentLength > 0)
                {
                    string fileName = sp.MaSP;
                    string fullPathWithFileName = "~/Asset/img/" + fileName + "_4.png";
                    hpf.SaveAs(Server.MapPath(fullPathWithFileName));
                    sp.Hinh4 = sp.MaSP + "_4.png";
                }
                else
                { sp.Hinh4 = tam.Hinh4; }
                if (sp.SLDaBan > 10000)
                {
                    sp.SLDaBan = 0;
                }
                else { sp.SLDaBan = tam.SLDaBan; }
                if (sp.LuotView > 10000)
                {
                    sp.LuotView = 0;
                }
                else { sp.LuotView = tam.LuotView; }
                sp.TinhTrang = tam.TinhTrang;
                PetproShopBUS.UpdateSP(id, sp);
                // TODO: Add update logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        // GET: Admin/SanPham/Delete/5
        public ActionResult Delete(String id)
        {
            return View(PetproShopBUS.ChiTiet(id));
        }

        // POST: Admin/SanPham/Delete/5
        [HttpPost]
        public ActionResult Delete(string id, SanPham sp)
        {
            var tam = PetproShopBUS.ChiTiet(id);
            try
            {


                if (tam.SLDaBan > 10000)
                {
                    tam.SLDaBan = 0;
                }
                if (tam.LuotView > 10000)
                {
                    tam.LuotView = 0;
                }

                if (tam.TinhTrang == "1         ")
                {
                    tam.TinhTrang = "0         ";
                }
                else { tam.TinhTrang = "1         "; }
                PetproShopBUS.UpdateSP(id, tam);
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
