import jwt from "jsonwebtoken";

const menuController = async (req, res) => {
  try {
    const token = req.headers.token;
    jwt.verify(token, process.env.PRIVATE_KEY, async function (err, decoded) {
      if (err) {
        res.status(405).json({
          result: false,
          msg: "Bạn không có quyền thực hiện hành động này. Vui lòng đăng nhập.",
        });
      } else {
        res.status(200).json({
          result: true,
          msg: "Success",
          data: [
            {
              category: "apps",
              arrMenuItem: [
                {
                  arrSubMenu: [
                    { link: "/my-project", title: "My Projects" },
                    { link: "/view-project", title: "View Project" },
                    { link: "/targets", title: "Targets" },
                    { link: "/budget", title: "Budget" },
                    { link: "/user", title: "User" },
                    { link: "/files", title: "Files" },
                    { link: "/activity", title: "Activity" },
                  ],
                  icon: "fa-address-book",
                  title: "User Projects",
                },
                {
                  arrSubMenu: [
                    { link: "/catalog", title: "Catalog" },
                    { link: "/sales", title: "Sales" },
                    { link: "/customers", title: "Customers" },
                    { link: "/report", title: "Report" },
                    { link: "/settings", title: "settings" },
                  ],
                  icon: "fa-cart-shopping",
                  title: "eCommerce",
                },
              ],
            },
            {
              category: "pages",
              arrMenuItem: [
                {
                  arrSubMenu: [
                    { link: "/overview", title: "Overview" },
                    { link: "/projects", title: "Projects" },
                    { link: "/campaigns", title: "Campaigns" },
                    { link: "/documents", title: "Documents" },
                    { link: "/followers", title: "Followers" },
                    { link: "/activity", title: "Activity" },
                  ],
                  icon: "fa-book",
                  title: "Profile",
                },
                {
                  arrSubMenu: [
                    { link: "/overview", title: "Overview" },
                    { link: "/setting", title: "Setting" },
                    { link: "/security", title: "Security" },
                    { link: "/activity", title: "Activity" },
                    { link: "/billing", title: "Billing" },
                    { link: "/statements", title: "Statements" },
                    { link: "/referals", title: "Referals" },
                    { link: "/api-keys", title: "API Keys" },
                    { link: "/logs", title: "Logs" },
                  ],
                  icon: "fa-user",
                  title: "Account",
                },
              ],
            },
            {
              category: "report",
              arrMenuItem: [
                { link: "/banner", icon: "fa-rectangle-ad", title: "Banner" },
                { link: "/news", icon: "fa-newspaper", title: "Tin tức" },
                {
                  link: "/manual",
                  icon: "fa-book",
                  title: "Hướng dẫn sử dụng",
                },
                {
                  link: "/faqs",
                  icon: "fa-file-circle-question",
                  title: "FAQs",
                },
              ],
            },
          ],
        });
      }
    });
  } catch (error) {
    console.log(error);
  }
};

export default menuController;
