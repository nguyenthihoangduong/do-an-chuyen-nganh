using PetproShopConnection;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace doanchuyennganh.Controllers
{
    public class GioHangController : Controller
    {
        // GET: GioHang
        public ActionResult Index()
        {
            List<GioHangItem> giohang = Session["giohang"] as List<GioHangItem>;
            return View(giohang);

        }


        public RedirectToRouteResult ThemVaoGio(string SanPhamID)
        {
            if (Session["giohang"] == null) // Nếu giỏ hàng chưa được khởi tạo
            {
                Session["giohang"] = new List<GioHangItem>();  // Khởi tạo Session["giohang"] là 1 List<CartItem>
            }

            List<GioHangItem> giohang = Session["giohang"] as List<GioHangItem>;  // Gán qua biến giohang dễ code

            // Kiểm tra xem sản phẩm khách đang chọn đã có trong giỏ hàng chưa


            if (giohang.FirstOrDefault(m => m.SanPhamID == SanPhamID) == null) // ko co sp nay trong gio hang
            {
                var db = new PetproShopConnectionDB();
                SanPham sp = db.Query<SanPham>("select * From SanPham where MaSP='" + SanPhamID + "'").FirstOrDefault();


                //SanPham sp = db.SanPhams.Find(SanPhamID);  // tim sp theo sanPhamID

                GioHangItem newItem = new GioHangItem()
                {
                    SanPhamID = SanPhamID,
                    TenSanPham = sp.TenSP,
                    SoLuong = 1,
                    Hinh = sp.HinhChinh,
                    DonGia = sp.Gia.Value

                };  // Tạo ra 1 CartItem mới

                giohang.Add(newItem);  // Thêm CartItem vào giỏ 
            }
            else
            {
                // Nếu sản phẩm khách chọn đã có trong giỏ hàng thì không thêm vào giỏ nữa mà tăng số lượng lên.
                GioHangItem cardItem = giohang.FirstOrDefault(m => m.SanPhamID == SanPhamID);
                cardItem.SoLuong++;
            }

            // Action này sẽ chuyển hướng về trang chi tiết sp khi khách hàng đặt vào giỏ thành công. Bạn có thể chuyển về chính trang khách hàng vừa đứng bằng lệnh return Redirect(Request.UrlReferrer.ToString()); nếu muốn.
            //  return RedirectToAction("ChiTiet", "SanPham", new { id = SanPhamID });
            return RedirectToAction("Index", "GioHang");
        }
        public RedirectToRouteResult SuaSoLuong(string SanPhamID, int soluongmoi)
        {
            // tìm carditem muon sua
            List<GioHangItem> giohang = Session["giohang"] as List<GioHangItem>;
            GioHangItem itemSua = giohang.FirstOrDefault(m => m.SanPhamID == SanPhamID);
            if (itemSua != null)
            {
                itemSua.SoLuong = soluongmoi;
            }
            return RedirectToAction("Index");

        }
        public RedirectToRouteResult XoaKhoiGio(string SanPhamID)
        {
            List<GioHangItem> giohang = Session["giohang"] as List<GioHangItem>;
            GioHangItem itemXoa = giohang.FirstOrDefault(m => m.SanPhamID == SanPhamID);
            if (itemXoa != null)
            {
                giohang.Remove(itemXoa);
            }
            return RedirectToAction("Index");
        }
    }
}