using PetproShopConnection;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace doanchuyennganh.Models.BUS
{
    public class NhaSanXuatBUS
    {
        //--------------Khách Hàng
        public static IEnumerable<NhaSanXuat> DanhSach()
        {
            var db = new PetproShopConnectionDB();
            return db.Query<NhaSanXuat>("select * From NhaSanXuat where TinhTrang=0");
        }
        public static IEnumerable<SanPham> ChiTiet(String id)
        {
            var db = new PetproShopConnectionDB();
            return db.Query<SanPham>("select * From SanPham where MaNSX='" + id + "'");
        }
        //--------------Admin
        public static void ThemNSX(NhaSanXuat nsx)
        {
            var db = new PetproShopConnectionDB();
            db.Insert(nsx);
        }
        public static IEnumerable<NhaSanXuat> DanhSachAdmin()
        {
            var db = new PetproShopConnectionDB();
            return db.Query<NhaSanXuat>("select * From NhaSanXuat ");
        }
        public static NhaSanXuat ChiTietAdmin(String id)
        {
            var db = new PetproShopConnectionDB();
            return db.SingleOrDefault<NhaSanXuat>("select * From NhaSanXuat where MaNSX='" + id + "'");
        }
        public static void UpdateNSX(String id, NhaSanXuat nsx)
        {

            var db = new PetproShopConnectionDB();
            db.Update(nsx, id);
        }
    }
}