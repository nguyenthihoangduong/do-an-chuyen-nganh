using PetproShopConnection;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace doanchuyennganh.Models.BUS
{
    public class ThanhToanBUS
    {
        //--------------Khách Hàng
        public static IEnumerable<ThanhToan> DanhSachHD()
        {
            var db = new PetproShopConnectionDB();
            return db.Query<ThanhToan>("select * From ThanhToan where TinhTrang=0");
        }
        //public static IEnumerable<SanPham> ChiTiet(String id)
        //{
        //    var db = new PetproShopConnectionDB();
        //    return db.Query<SanPham>("select * From SanPham where MaNSX='" + id + "'");
        //}
        //--------------Admin
        public static void ThemHD(ThanhToan tt)
        {
            var db = new PetproShopConnectionDB();
            db.Insert(tt);
        }
        public static IEnumerable<ThanhToan> DanhSachKH()
        {
            var db = new PetproShopConnectionDB();
            return db.Query<ThanhToan>("select * From ThanhToan ");
        }
        public static ThanhToan ChiTietKH(String id)
        {
            var db = new PetproShopConnectionDB();
            return db.SingleOrDefault<ThanhToan>("select * From ThanhToan where MaTT='" + id + "'");
        }
        public static void UpdateHD(String id, ThanhToan tt)
        {

            var db = new PetproShopConnectionDB();
            db.Update(tt, id);
        }
    }
}