import pool from "../../configs/connectDB";
import { handleMd5, generateUnixTimeNow } from "../../utils";

const createManualCategoryController = async (req, res) => {
  try {
    const { title } = req.body;
    if (!title) {
      res.status(200).json({
        result: false,
        msg: "Bạn chưa nhập dữ liệu hoặc dữ liệu không đúng.",
      });
    } else {
      const [createManualCategory] = await pool.execute(
        "INSERT INTO manual_category(Id, Title) VALUES (?,?)",
        [handleMd5(`${generateUnixTimeNow()}${title}`), title]
      );
      res.status(200).json({
        result: true,
        msg: "Tạo danh mục hướng dẫn sử dụng thành công.",
      });
    }
  } catch (error) {
    console.log(error);
    res.status(200).json({
      result: false,
      msg: "Hệ thống bảo trì. Vui lòng thử lại.",
    });
  }
};

export default createManualCategoryController;
