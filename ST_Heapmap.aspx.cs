using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class Maps : System.Web.UI.Page
{

    //DataTable dtHeapmap = new DataTable();

    protected void Page_Load(object sender, EventArgs e)
    {
        //string connString = WebConfigurationManager.ConnectionStrings["WY-FADBConnectionString"].ConnectionString;
        //using (SqlConnection conn = new SqlConnection(connString))
        //{
        //    conn.Open();
        //    string query = "SELECT * FROM [LookupFA] ORDER BY [LFA_ID]";
        //    using (SqlCommand comm = new SqlCommand(query, conn))
        //    {
        //        using (SqlDataAdapter da = new System.Data.SqlClient.SqlDataAdapter(query, conn))
        //        {
        //            DataTable dt = new DataTable();
        //            da.Fill(dt);
        //            //gvHeatmap.DataSource = dt;
        //            //gvHeatmap.DataBind();
        //            //dtHeapmap = dt;

        //            string sHeatmapData = "";

        //            foreach (DataRow row in dt.Rows)
        //            {
        //                //sHeatmapData = dt.
        //            }


        //            dt.Dispose();
        //            da.Dispose();
        //        }

        //    }
        //    conn.Close();
        //}


    }
}