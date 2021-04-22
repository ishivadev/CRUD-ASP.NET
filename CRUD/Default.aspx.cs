using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            LoadRecord();
        }
    }

    SqlConnection con = new SqlConnection("Data Source=SHIVA\\SQLEXPRESS;Initial Catalog=CrudDB;Integrated Security=True");

    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand com = new SqlCommand("Insert into StudentInfo_Tab values('"+int.Parse(TextBox1.Text)+"','"+TextBox2.Text+"','"+DropDownList1.SelectedValue+"','"+ double.Parse(TextBox3.Text) + "','"+TextBox4.Text+"')", con);
        com.ExecuteNonQuery();
        con.Close();
        ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Sucessfully Inserted')", true);
    }

    void LoadRecord()
    {
        SqlCommand com = new SqlCommand("select * from StudentInfo_Tab", con);
        SqlDataAdapter d = new SqlDataAdapter(com);
        DataTable dt = new DataTable();
        d.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();

    }



    protected void Button2_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand com = new SqlCommand("update StudentInfo_Tab set StudentName = '" +TextBox2.Text+ "', Address = '" + DropDownList1.SelectedValue + "', Age = '" + double.Parse(TextBox3.Text) + "', Contact = '" + TextBox4.Text + "' where StudentID = '" +int.Parse(TextBox1.Text)+"'", con);
        com.ExecuteNonQuery();
        con.Close();
        ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Sucessfully Updated')", true);
        LoadRecord();
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand com = new SqlCommand("Delete StudentInfo_Tab where StudentID = '" + int.Parse(TextBox1.Text) + "'", con);
        com.ExecuteNonQuery();
        con.Close();
        ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Sucessfully Deleted')", true);
        LoadRecord();
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        SqlCommand com = new SqlCommand("select * from StudentInfo_Tab where StudentID = '" + int.Parse(TextBox1.Text) + "'", con);
        SqlDataAdapter d = new SqlDataAdapter(com);
        DataTable dt = new DataTable();
        d.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }
    
     protected void Button5_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand com = new SqlCommand("select * from StudentInfo_Tab where StudentID = '" + int.Parse(TextBox1.Text) + "'", con);
        SqlDataReader r = com.ExecuteReader();
        while(r.Read())
        {
            TextBox2.Text = r.GetValue(1).ToString();
            DropDownList1.SelectedValue = r.GetValue(2).ToString();
            TextBox3.Text = r.GetValue(3).ToString();
            TextBox4.Text = r.GetValue(4).ToString();        
        }  
    }
}
