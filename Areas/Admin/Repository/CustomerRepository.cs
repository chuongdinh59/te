﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using BuildingDemo.Models;

namespace BuildingDemo.Areas.Admin.Repository
{
    public class CustomerRepository
    {
        private static BuildingDB db = new BuildingDB();

        public Customer findByID (int id)
        {
            return db.Customers.Find(id);
        }
    }
}