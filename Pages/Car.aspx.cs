using System;
using System.Collections;
using System.Text;

namespace Pages
{
    public partial class Pages_Car : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            FillPage();
        }

        private void FillPage()
        {
            ArrayList carList = new ArrayList();

            if (!IsPostBack)
            {
                carList = ConnectionClass.GetCarByType("%");
            }
            else
            {
                carList = ConnectionClass.GetCarByType(DropDownList1.SelectedValue);
            }
            StringBuilder sb = new StringBuilder();

            foreach (Car car in carList)
            {
                sb.Append(
                    string.Format(
                        @"<table class='carTable'>
            <tr>
                <th rowspan='6' width='150px'><img runat='server' src='{6}' /></th>
                <th width='50px'>Name: </td>
                <td>{0}</td>
            </tr>

            <tr>
                <th>Type: </th>
                <td>{1}</td>
            </tr>

            <tr>
                <th>Price: </th>
                <td>{2} $</td>
            </tr>

            <tr>
                <th>Roast: </th>
                <td>{3}</td>
            </tr>

            <tr>
                <th>Origin: </th>
                <td>{4}</td>
            </tr>

            <tr>
                <td colspan='2'>{5}</td>
            </tr>           
            
           </table>", car.Name, car.Type, car.Price, car.Roast, car.Country, car.Review, car.Image));
                lblOutput.Text = sb.ToString();
            }
        }
        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            FillPage();
        }
        
}
}