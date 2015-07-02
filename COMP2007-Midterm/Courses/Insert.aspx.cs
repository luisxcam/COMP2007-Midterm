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
    public partial class Insert : System.Web.UI.Page
    {
		protected COMP2007_Midterm.Models.DBSchoolConnections _db = new COMP2007_Midterm.Models.DBSchoolConnections();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        // This is the Insert method to insert the entered Cours item
        // USAGE: <asp:FormView InsertMethod="InsertItem">
        public void InsertItem()
        {
            using (_db)
            {
                var item = new COMP2007_Midterm.Models.Cours();

                TryUpdateModel(item);

                if (ModelState.IsValid)
                {
                    // Save changes
                    _db.Courses.Add(item);
                    _db.SaveChanges();

                    Response.Redirect("../Default");
                }
            }
        }

        protected void ItemCommand(object sender, FormViewCommandEventArgs e)
        {
            if (e.CommandName.Equals("Cancel", StringComparison.OrdinalIgnoreCase))
            {
                Response.Redirect("../Default");
            }
        }
    }
}
