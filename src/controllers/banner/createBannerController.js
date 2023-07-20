import pool from "../../configs/connectDB";
import { generateUnixTimeNow } from "../../utils";

const createBannerController = async (decodedToken, req, res) => {
  try {
    const { image, url } = req.body;
    if (!image || !url) {
      res.status(200).json({
        result: false,
        msg: "Bạn chưa nhập dữ liệu hoặc dữ liệu không đúng.",
      });
    } else {
      const [storeBanner] = await pool.execute(
        "INSERT INTO banner(Image, Url, CreateAt, CreateBy, UpdateAt) VALUES (?,?,?,?,?)",
        [image, url, generateUnixTimeNow(), decodedToken.Id, 0]
      );
      res.status(200).json({
        result: true,
        msg: "Thêm banner thành công.",
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

export default createBannerController;
