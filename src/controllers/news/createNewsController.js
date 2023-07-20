import pool from "../../configs/connectDB";
import { generateUnixTimeNow } from "../../utils";

const createNewsController = async (decodedToken, req, res) => {
  try {
    const { title, highlight, image, content } = req.body;
    if (!title || !highlight || !image || !content) {
      res.status(200).json({
        result: false,
        msg: "Bạn chưa nhập dữ liệu hoặc dữ liệu không đúng.",
      });
    } else {
      const [storeNews] = await pool.execute(
        "INSERT INTO news(Title, Highlight, Thumbnail, Content, CreateAt, CreateBy, UpdateAt) VALUES (?,?,?,?,?,?, 0)",
        [
          title,
          highlight,
          image,
          content,
          generateUnixTimeNow(),
          decodedToken.Id,
        ]
      );
      res.status(200).json({
        result: true,
        msg: "Tạo mới tin tức thành công.",
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

export default createNewsController;
