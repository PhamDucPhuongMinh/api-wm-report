import pool from "../../configs/connectDB";
import { isJsonString } from "../../utils";

const updateManualController = async (req, res) => {
  try {
    const { id, title, text, images, category } = req.body;
    // check have enough data
    if (!id || !title || !text || !category || !images) {
      res.status(200).json({
        result: false,
        msg: "Bạn chưa nhập dữ liệu hoặc dữ liệu không đúng.",
      });
    }
    // check text, images data
    else if (!isJsonString(text) || !isJsonString(images)) {
      res.status(200).json({
        result: false,
        msg: "Bạn chưa nhập dữ liệu hoặc dữ liệu không đúng.",
      });
    } else if (JSON.parse(text)?.length !== JSON.parse(images)?.length) {
      res.status(200).json({
        result: false,
        msg: "Bạn chưa nhập dữ liệu hoặc dữ liệu không đúng.",
      });
    } else {
      // check category exist
      const [manualCategoryList] = await pool.execute(
        "SELECT * FROM manual_category"
      );
      if (!manualCategoryList.find((item) => item.Id === category)) {
        res.status(200).json({
          result: false,
          msg: "Danh mục hướng dẫn sử dụng không tồn tại. Vui lòng kiểm tra lại.",
        });
      } else {
        // Update manual
        const [updateManual] = await pool.execute(
          "UPDATE manual SET Title=?, Text=?, Images=?, Category=? WHERE Id=?",
          [title, text, images, category, id]
        );
        res.status(200).json({
          result: true,
          msg: "Cập nhật hướng dẫn sử dụng thành công.",
        });
      }
    }
  } catch (error) {
    console.log(error);
    res.status(200).json({
      result: false,
      msg: "Hệ thống đang bảo trì. Vui lòng thử lại sau.",
    });
  }
};

export default updateManualController;
