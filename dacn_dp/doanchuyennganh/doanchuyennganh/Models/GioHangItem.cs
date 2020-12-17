using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace doanchuyennganh
{
    public class GioHangItem
    {
        public string Hinh { get; set; }
        public string SanPhamID { get; set; }
        public string TenSanPham { get; set; }
        public double DonGia { get; set; }
        public int SoLuong { get; set; }
        public double ThanhTien
        {
            get
            {
                return SoLuong * DonGia;
            }
        }
    }
}