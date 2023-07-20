import pool from "../../configs/connectDB";
import { handleMd5, generateUnixTimeNow } from "../../utils";

const createFaqsCategoryController = async (req, res) => {
  try {
    const { title } = req.body;
    if (!title) {
      res.status(200).json({
        result: false,
        msg: "Bạn chưa nhập dữ liệu hoặc dữ liệu không đúng.",
      });
    } else {
      const [createCategory] = await pool.execute(
        "INSERT INTO faqs_category(Id, Title) VALUES (?,?)",
        [handleMd5(`${generateUnixTimeNow()}${title}`), title]
      );
      res.status(200).json({
        result: true,
        msg: "Tạo danh mục câu hỏi thành công.",
      });
    }
  } catch (error) {
    console.log(error);
    res.status(200).json({
      result: false,
      msg: "Hệ thống đang bảo trì. Vui lòng thử lại sau.",
    });
  }
};

export default createFaqsCategoryController;
