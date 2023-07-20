import pool from "../../configs/connectDB";
import jwt from "jsonwebtoken";
import createManualController from "./createManualController";
import updateManualController from "./updateManualController";
import deleteManualController from "./deleteManualController";

const manualController = (req, res) => {
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
            createManualController(req, res);
            break;
          case "update":
            updateManualController(req, res);
            break;
          case "delete":
            deleteManualController(req, res);
            break;
          default:
            const [manualCategoryList] = await pool.execute(
              "SELECT * FROM manual_category"
            );
            const [manualList] = await pool.execute(
              "SELECT manual.Id, manual.Title, manual.Text, manual.Images, manual.Category as CategoryId, .manual_category.Title as CategoryTitle FROM manual INNER JOIN manual_category ON manual.Category = manual_category.Id;"
            );
            const result = manualCategoryList.map((manualCategoryItem) => {
              let manualListInCategory = manualList.filter(
                (manualItem) => manualItem.CategoryId === manualCategoryItem.Id
              );
              manualListInCategory.forEach((item) => {
                item.Text = JSON.parse(item.Text);
                item.Images = JSON.parse(item.Images);
              });
              return {
                CategoryId: manualCategoryItem.Id,
                CategoryTitle: manualCategoryItem.Title,
                ManualList: manualListInCategory,
              };
            });
            res.status(200).json({
              result: true,
              msg: "Success",
              data: result,
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

export default manualController;
