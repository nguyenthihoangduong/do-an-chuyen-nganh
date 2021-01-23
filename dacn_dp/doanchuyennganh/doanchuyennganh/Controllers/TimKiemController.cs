using PagedList;
using PetproShopConnection;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace doanchuyennganh.Controllers
{
    public class TimKiemController : Controller
    {
        // GET: TimKiem
       
        PetproShopConnectionDB db = new PetproShopConnectionDB();       

        [HttpGet]
        public ActionResult KQTimKiem(string sTuKhoa, int? page)
        {
            // tìm kiếm theo tên sản phẩm
            // thực hiện phân trang
            // tạo biến số sản phẩm trên trang
            if (Request.HttpMethod != "GET")
            {
                page = 1;
            }
            int Pagesize = 9;
            // tạo biến số trang hiện tại
            int PageNumber = (page ?? 1);


            var lstSanPham = db.Query<SanPham>(string.Format("select * From SanPham where TenSP like '%{0}%'", sTuKhoa));
            // var lstSanPham = db.SanPhams.Where(n => n.TenSP.Contains(sTuKhoa));
            ViewBag.TuKhoa = sTuKhoa;
            if (lstSanPham == null)
                lstSanPham = new List<SanPham>();

            return View(lstSanPham.OrderBy(n => n.TenSP).ToPagedList(PageNumber, Pagesize));

        }
        [HttpPost]
        public ActionResult LayTuKhoaTimKiem(string sTuKhoa)
        {

            return RedirectToAction("KQTimKiem", new { @sTuKhoa = sTuKhoa });

        }
    }
}