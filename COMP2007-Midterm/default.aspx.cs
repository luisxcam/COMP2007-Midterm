using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Entity;
using COMP2007_Midterm.Models;

namespace COMP2007_Midterm.Courses
{
    public partial class Default : System.Web.UI.Page
    {
		protected COMP2007_Midterm.Models.DBSchoolConnections _db = new COMP2007_Midterm.Models.DBSchoolConnections();

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        // Model binding method to get List of Cours entries
        // USAGE: <asp:ListView SelectMethod="GetData">
        public IQueryable<COMP2007_Midterm.Models.Cours> GetData()
        {
            return _db.Courses;
        }
    }
}

