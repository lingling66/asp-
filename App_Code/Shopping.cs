using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

/// <summary>
/// Shopping 的摘要说明
/// </summary>
public class Gouwu
{
    
        private int shangpingid;
        private string shangpingname;
        private decimal price;
        private int quantity;
        private decimal allprice;

        public int Shangpingid
        {
            get
            {
                return shangpingid;
            }
            set
            {
                shangpingid = value;
            }
        }
        public string Shangpingname
        {

            get
            {
                return shangpingname;
            }
            set
            {
                shangpingname = value;
            }
        }
        public decimal Price
        {
            get
            {
                return price;
            }
            set
            {
                price = value;
            }
        }
        public int Quantity
        {
            get
            {
                return quantity;
            }
            set
            {
                quantity = value;
            }
        }
        public decimal Allprice
        {
            get
            {
                return allprice;
            }
            set
            {
                allprice = value;
            }
        }


        public Gouwu()
        {

        }
    }

