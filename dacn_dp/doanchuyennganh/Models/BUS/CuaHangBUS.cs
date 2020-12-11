using PetproShopConnection;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace doanchuyennganh.Models.BUS
{
    public class CuaHangBUS
    {
        //-----------Khách Hàng-------
        public static IEnumerable<LoaiSanPham> DanhSach()
        {
            var db = new PetproShopConnectionDB();
            return db.Query<LoaiSanPham>("select * From LoaiSanPham where TinhTrang=0");
        }
        public static IEnumerable<SanPham> ChiTiet(String id)
        {
            var db = new PetproShopConnectionDB();
            return db.Query<SanPham>("select * From SanPham where MaLoaiSP='" + id + "'");
        }
        //-----------Admin------------
        public static void ThemLSP(LoaiSanPham lsp)
        {
            var db = new PetproShopConnectionDB();
            db.Insert(lsp);
        }
        public static IEnumerable<LoaiSanPham> DanhSachLSPAdmin()
        {
            var db = new PetproShopConnectionDB();
            return db.Query<LoaiSanPham>("select * From LoaiSanPham");
        }
        public static LoaiSanPham ChiTietLSPAdmin(String id)
        {
            var db = new PetproShopConnectionDB();
            return db.SingleOrDefault<LoaiSanPham>("select * From LoaiSanPham where MaLoaiSP='" + id + "'");
        }
        public static void UpdateLSP(String id, LoaiSanPham lsp)
        {

            var db = new PetproShopConnectionDB();
            db.Update(lsp, id);
        }
    }
}