using PetproShopConnection;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace doanchuyennganh.Models.BUS
{
    public class PetproShopBUS
    {
        public static IEnumerable<SanPham> DanhSach()
        {
            var db = new PetproShopConnectionDB();
            return db.Query<SanPham>("select * From SanPham where TinhTrang=0");
        }
        public static SanPham ChiTiet(String a)
        {
            var db = new PetproShopConnectionDB();
            return db.SingleOrDefault<SanPham>("select * From SanPham where MaSP = @0", a);
        }
        public static IEnumerable<SanPham> Top5New()
        {
            var db = new PetproShopConnectionDB();
            return db.Query<SanPham>("select Top 5* From SanPham where ChucNang =N'MOI'");
        }
        public static IEnumerable<SanPham> Top5Hot()
        {
            var db = new PetproShopConnectionDB();
            return db.Query<SanPham>("select Top 5* From SanPham where ChucNang =N'HOT'");
        }
        public static IEnumerable<SanPham> TopKM()
        {
            var db = new PetproShopConnectionDB();
            return db.Query<SanPham>("select Top 5* From SanPham where ChucNang =N'KM'");
        }
        public static IEnumerable<SanPham> ThoiTrangHome()
        {
            var db = new PetproShopConnectionDB();
            return db.Query<SanPham>("select Top 5* From SanPham where GhiChu =N'TT'");
        }
        public static IEnumerable<SanPham> DungCuHome()
        {
            var db = new PetproShopConnectionDB();
            return db.Query<SanPham>("select Top 5* From SanPham where GhiChu =N'DC'");
        }
        public static IEnumerable<SanPham> ThucAnHome()
        {
            var db = new PetproShopConnectionDB();
            return db.Query<SanPham>("select Top 5* From SanPham where GhiChu =N'TA'");
        }
        public static IEnumerable<SanPham> SucKhoeHome()
        {
            var db = new PetproShopConnectionDB();
            return db.Query<SanPham>("select Top 5* From SanPham where GhiChu =N'SK'");
        }
        public static IEnumerable<SanPham> KhuyenMaiHome()
        {
            var db = new PetproShopConnectionDB();
            return db.Query<SanPham>("select Top 9* From SanPham where ChucNang =N'KM'");
        }
        public static IEnumerable<SanPham> DanhSachSP()
        {
            var db = new PetproShopConnectionDB();
            return db.Query<SanPham>("select * From SanPham");
        }
        public static void ThemSP(SanPham sp)
        {
            var db = new PetproShopConnectionDB();
            db.Insert(sp);
        }
        public static void UpdateSP(string id, SanPham sp)
        {
            var db = new PetproShopConnectionDB();
            db.Update(sp, id);
        }
    }
}