using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Pharmacy
{
    public partial class SiteMaster : MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)



         
        {

            if (!Roles.IsUserInRole("Admin"))
            {
                MenuItemCollection menuItems = NavigationMenu.Items;
                MenuItem adminItem = new MenuItem();
                foreach (MenuItem menuItem in menuItems)
                {
                    if (menuItem.Text == "Admin")// to hide specific menu put  the name here ... Warning, case sensitive 
                        adminItem = menuItem;
                     
                }
                menuItems.Remove(adminItem);
            }
            

            // this code hide admin menu from all other users
            if (!Roles.IsUserInRole("Marketing"))
            {
                MenuItemCollection menuItems = NavigationMenu.Items;
                MenuItem adminItem = new MenuItem();
                foreach (MenuItem menuItem in menuItems)
                {
                    if (menuItem.Text == "Marketing")// to hide specific menu put  the name here ... Warning, case sensitive 
                        adminItem = menuItem;
                }
                menuItems.Remove(adminItem);
            }
            if (!Roles.IsUserInRole("Other Activities"))
            {
                MenuItemCollection menuItems = NavigationMenu.Items;
                MenuItem adminItem = new MenuItem();
                foreach (MenuItem menuItem in menuItems)
                {
                    if (menuItem.Text == "Other Activities")// to hide specific menu put  the name here ... Warning, case sensitive 
                        adminItem = menuItem;
                }
                menuItems.Remove(adminItem);
            }
            if (!Roles.IsUserInRole("Export Data"))
            {
                MenuItemCollection menuItems = NavigationMenu.Items;
                MenuItem adminItem = new MenuItem();
                foreach (MenuItem menuItem in menuItems)
                {
                    if (menuItem.Text == "Export Data")// to hide specific menu put  the name here ... Warning, case sensitive 
                        adminItem = menuItem;
                }
                menuItems.Remove(adminItem);
            }

            if (!Roles.IsUserInRole("Payment"))
            {
                MenuItemCollection menuItems = NavigationMenu.Items;
                MenuItem adminItem = new MenuItem();
                foreach (MenuItem menuItem in menuItems)
                {
                    if (menuItem.Text == "Payment")// to hide specific menu put  the name here ... Warning, case sensitive 
                        adminItem = menuItem;
                }
                menuItems.Remove(adminItem);
            }


            if (!Roles.IsUserInRole("client")) // roles are case sensitive
            {
                MenuItemCollection menuItems = NavigationMenu.Items;
                MenuItem clientItem = new MenuItem();
                foreach (MenuItem menuItem in menuItems)
                {
                    if (menuItem.Text == "client")// to hide specific menu put  the name here ... Warning, case sensitive 

                        clientItem = menuItem;
                }
                menuItems.Remove(clientItem);
            }

            if (!Roles.IsUserInRole("Medication CRUD"))
            {
                MenuItemCollection menuItems = NavigationMenu.Items;
                MenuItem adminItem = new MenuItem();
                foreach (MenuItem menuItem in menuItems)
                {
                    if (menuItem.Text == "Medication CRUD")// to hide specific menu put  the name here ... Warning, case sensitive 
                        adminItem = menuItem;
                }
                menuItems.Remove(adminItem);
            }
        }

        protected void NavigationMenu_MenuItemClick(object sender, MenuEventArgs e)
        {

        }
    }
}
