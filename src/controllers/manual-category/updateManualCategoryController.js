import pool from "../../configs/connectDB";

const updateManualCategoryController = async (req, res) => {
  try {
    const { id, title } = req.body;
    if (!title || !id) {
      res.status(200).json({
        result: false,
        msg: "Bạn chưa nhập dữ liệu hoặc dữ liệu không đúng.",
      });
    } else {
      const [updateManualCategory] = await pool.execute(
        "UPDATE manual_category SET Title=? WHERE Id = ?",
        [title, id]
      );
      res.status(200).json({
        result: true,
        msg: "Thay đổi danh mục hướng dẫn sử dụng thành công.",
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

export default updateManualCategoryController;
