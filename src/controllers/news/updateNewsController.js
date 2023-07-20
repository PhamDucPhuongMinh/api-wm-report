import pool from "../../configs/connectDB";
import { generateUnixTimeNow } from "../../utils";

const updateNewsController = async (req, res) => {
  try {
    const { id, title, highlight, image, content } = req.body;
    if (!id || !title || !highlight || !image || !content) {
      res.status(200).json({
        result: false,
        msg: "Bạn chưa nhập dữ liệu hoặc dữ liệu không đúng.",
      });
    } else {
      const [updateNews] = await pool.execute(
        "UPDATE news SET Title=?, Highlight=?, Thumbnail=?, Content=?, UpdateAt=? WHERE Id = ?",
        [title, highlight, image, content, generateUnixTimeNow(), id]
      );
      res.status(200).json({
        result: true,
        msg: "Thay đổi tin tức thành công.",
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

export default updateNewsController;
