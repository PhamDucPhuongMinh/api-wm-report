import pool from "../../configs/connectDB";
import jwt from "jsonwebtoken";
import createManualCategoryController from "./createManualCategoryController";
import updateManualCategoryController from "./updateManualCategoryController";
import deleteManualCategoryController from "./deleteManualCategoryController";

const manualCategoryController = (req, res) => {
  try {
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
            createManualCategoryController(req, res);
            break;
          case "update":
            updateManualCategoryController(req, res);
            break;
          case "delete":
            deleteManualCategoryController(req, res);
            break;
          default:
            const [manualCategoryList] = await pool.execute(
              "SELECT * FROM manual_category"
            );
            res.status(200).json({
              result: true,
              msg: "Success",
              data: manualCategoryList,
            });
        }
      }
    });
  } catch (error) {
    console.log(error);
    res.status(200).json({
      result: false,
      msg: "Hệ thống bảo trì. Vui lòng thử lại.",
    });
  }
};

export default manualCategoryController;
