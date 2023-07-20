import jwt from "jsonwebtoken";
import createCategoryFaqsController from "./createFaqsCategoryController";
import updateFaqsCategoryController from "./updateFaqsCategoryController";
import deleteFaqsCategory from "./deleteFaqsCategoryController";
import pool from "../../configs/connectDB";

const faqsCategoryController = (req, res) => {
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
          createCategoryFaqsController(req, res);
          break;
        case "update":
          updateFaqsCategoryController(req, res);
          break;
        case "delete":
          deleteFaqsCategory(req, res);
          break;
        default:
          const [faqsCategoryList] = await pool.execute(
            "SELECT * FROM faqs_category"
          );
          res.status(200).json({
            result: true,
            msg: "Success",
            data: faqsCategoryList,
          });
      }
    }
  });
};

export default faqsCategoryController;
