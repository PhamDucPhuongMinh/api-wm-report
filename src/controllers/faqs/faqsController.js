import jwt from "jsonwebtoken";
import createFaqsController from "./createFaqsController";
import updateFaqsController from "./updateFaqsController";
import deleteFaqsController from "./deleteFaqsController";
import pool from "../../configs/connectDB";

const faqsController = (req, res) => {
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
          createFaqsController(req, res);
          break;
        case "update":
          updateFaqsController(req, res);
          break;
        case "delete":
          deleteFaqsController(req, res);
          break;
        default:
          const [faqsCategoryList] = await pool.execute(
            "SELECT * FROM faqs_category"
          );
          const [faqsList] = await pool.execute(
            "SELECT faqs.Id, faqs.Question, faqs.Answer, faqs.Category as CategoryId, .faqs_category.Title as CategoryTitle FROM faqs INNER JOIN faqs_category ON faqs.Category = faqs_category.Id;"
          );
          const result = faqsCategoryList.map((faqsCategoryItem) => {
            return {
              CategoryId: faqsCategoryItem.Id,
              CategoryTitle: faqsCategoryItem.Title,
              FaqsList: faqsList.filter(
                (faqsItem) => faqsItem.CategoryId === faqsCategoryItem.Id
              ),
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
};

export default faqsController;
