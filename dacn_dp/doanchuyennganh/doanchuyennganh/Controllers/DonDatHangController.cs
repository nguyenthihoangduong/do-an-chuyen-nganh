using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace doanchuyennganh.Controllers
{
    public class DonDatHangController : Controller
    {
        // GET: DonDatHang
        public ActionResult Index()
        {
            return View();
        }

        // GET: DonDatHang/Details/5
        public ActionResult Details(int id)
        {
            return View();
        }

        // GET: DonDatHang/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: DonDatHang/Create
        [HttpPost]
        public ActionResult Create(FormCollection collection)
        {
            try
            {
                // TODO: Add insert logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        // GET: DonDatHang/Edit/5
        public ActionResult Edit(int id)
        {
            return View();
        }

        // POST: DonDatHang/Edit/5
        [HttpPost]
        public ActionResult Edit(int id, FormCollection collection)
        {
            try
            {
                // TODO: Add update logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        // GET: DonDatHang/Delete/5
        public ActionResult Delete(int id)
        {
            return View();
        }

        // POST: DonDatHang/Delete/5
        [HttpPost]
        public ActionResult Delete(int id, FormCollection collection)
        {
            try
            {
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
