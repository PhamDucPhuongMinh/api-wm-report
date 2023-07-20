import pool from "../../configs/connectDB";
import { generateUnixTimeNow } from "../../utils";

const updateBannerController = async (req, res) => {
  try {
    const { id, image, url } = req.body;
    if (!id || !image || !url) {
      res.status(200).json({
        result: false,
        msg: "Bạn chưa nhập dữ liệu hoặc dữ liệu không đúng.",
      });
    } else {
      const [updateNews] = await pool.execute(
        "UPDATE banner SET Image=?, Url=?, UpdateAt=? WHERE Id = ?",
        [image, url, generateUnixTimeNow(), id]
      );
      res.status(200).json({
        result: true,
        msg: "Thay đổi banner thành công.",
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

export default updateBannerController;
