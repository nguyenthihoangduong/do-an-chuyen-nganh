using PetproShopConnection;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace doanchuyennganh.Models.BUS
{
    public class PTTTBUS
    {
        //--------------Khách Hàng
        public static IEnumerable<PhuongThucThanhToan> DanhSachPT()
        {
            var db = new PetproShopConnectionDB();
            return db.Query<PhuongThucThanhToan>("select * From PhuongThucThanhToan where TinhTrang=0");
        }
    }
}