using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CRUD_P2_Ellis.Models
{
    public static class db
    {
        public static string getConnection()
        {
            return "server =.; database = GourmetShop; trusted_connection = True;";
        }
    }
}