import pool from "../../configs/connectDB";
import jwt from "jsonwebtoken";
import createBannerController from "./createBannerController";
import updateBannerController from "./updateBannerController";
import deleteBannerController from "./deleteBannerController";

const bannerController = (req, res) => {
  const token = req.headers.token;
  jwt.verify(token, process.env.PRIVATE_KEY, async function (err, decoded) {
    if (err) {
      res.status(405).json({
        result: false,
        msg: "Bạn không có quyền thực hiện hành động này. Vui lòng đăng nhập.",
      });
    } else {
      const { action } = req.params;
      switch (action) {
        case "create":
          createBannerController(decoded, req, res);
          break;
        case "update":
          updateBannerController(req, res);
          break;
        case "delete":
          deleteBannerController(req, res);
          break;
        default:
          const [banner] = await pool.execute(
            "SELECT banner.Id, banner.Image, banner.Url, banner.CreateAt, banner.UpdateAt, users.Name as CreateBy FROM banner INNER JOIN users ON banner.CreateBy=users.Id;"
          );
          res.status(200).json({
            result: true,
            msg: "Success",
            data: banner,
          });
      }
    }
  });
};

export default bannerController;
