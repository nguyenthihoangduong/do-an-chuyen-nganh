using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Routing;

namespace doanchuyennganh
{
    public class RouteConfig
    {
        public static void RegisterRoutes(RouteCollection routes)
        {
            routes.IgnoreRoute("{resource}.axd/{*pathInfo}");

            routes.MapRoute(
                name: "Cua Hang Petpro co so chinh",
                url: "cua-hang-petpro-co-so-192/7-phu-tho-hoa-tan-phu-tphcm",
                defaults: new { controller = "Home", action = "Index", id = UrlParameter.Optional }
            );

            routes.MapRoute(
                name: "Cau Chuyen Petpro",
                url: "cau-chuyen-petpro",
                defaults: new { controller = "CauChuyenPetPro", action = "Index", id = UrlParameter.Optional }
            );

            routes.MapRoute(
                name: "Ve Chung Toi",
                url: "ve-chung-toi",
                defaults: new { controller = "VeChungToi", action = "Index", id = UrlParameter.Optional }
            );

            routes.MapRoute(
                name: "Thu Y Tai Nha",
                url: "thu-y-tai-nha",
                defaults: new { controller = "ThuYTaiNha", action = "Index", id = UrlParameter.Optional }
            );

            routes.MapRoute(
                name: "Bao Hiem Suc Khoe",
                url: "bao-hiem-suc-khoe",
                defaults: new { controller = "BaoHiemSucKhoe", action = "Index", id = UrlParameter.Optional }
            );

            routes.MapRoute(
                name: "Cham Soc Suc Khoe",
                url: "cham-soc-suc-khoe",
                defaults: new { controller = "ChamSocSucKhoe", action = "Index", id = UrlParameter.Optional }
            );

            routes.MapRoute(
                name: "Spa",
                url: "spa",
                defaults: new { controller = "Spa", action = "Index", id = UrlParameter.Optional }
            );

            routes.MapRoute(
                name: "Phoi Giong",
                url: "phoi-giong",
                defaults: new { controller = "PhoiGiong", action = "Index", id = UrlParameter.Optional }
            );

            routes.MapRoute(
                name: "Triet San",
                url: "triet-san",
                defaults: new { controller = "TrietSan", action = "Index", id = UrlParameter.Optional }
            );

            routes.MapRoute(
                name: "Khach San",
                url: "khach-san",
                defaults: new { controller = "KhachSan", action = "Index", id = UrlParameter.Optional }
            );

            routes.MapRoute(
                name: "Hoa Tang Thu Cung",
                url: "hoa-tang-thu-cung",
                defaults: new { controller = "HoaTangThuCung", action = "Index", id = UrlParameter.Optional }
            );

            routes.MapRoute(
                name: "Khuyen Mai",
                url: "khuyen-mai",
                defaults: new { controller = "KhuyenMai", action = "Index", id = UrlParameter.Optional }
            );

            routes.MapRoute(
                name: "Tuyen Dung",
                url: "tuyen-dung",
                defaults: new { controller = "TuyenDung", action = "Index", id = UrlParameter.Optional }
            );

            routes.MapRoute(
                name: "Lien He",
                url: "lien-he",
                defaults: new { controller = "LienHe", action = "Index", id = UrlParameter.Optional }
            );

            routes.MapRoute(
                name: "Gio Hang",
                url: "gio-hang",
                defaults: new { controller = "GioHang", action = "Index", id = UrlParameter.Optional }
            );

            routes.MapRoute(
                name: "Thanh Toan",
                url: "thanh-toan",
                defaults: new { controller = "ThanhToan", action = "Create", id = UrlParameter.Optional }
            );

            routes.MapRoute(
                name: "Dang Ky",
                url: "dang-ky",
                defaults: new { controller = "Account", action = "Register", id = UrlParameter.Optional }
            );

            routes.MapRoute(
                name: "Dang Nhap",
                url: "dang-nhap",
                defaults: new { controller = "Account", action = "Login", id = UrlParameter.Optional }
            );
            
            routes.MapRoute(
                name: "Default",
                url: "{controller}/{action}/{id}",
                defaults: new { controller = "Home", action = "Index", id = UrlParameter.Optional }
            );
        }
    }
}
