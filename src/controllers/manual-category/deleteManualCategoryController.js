import pool from "../../configs/connectDB";

const deleteManualCategoryController = async (req, res) => {
  try {
    const { id } = req.body;
    if (!id) {
      res.status(200).json({
        result: false,
        msg: "Bạn chưa nhập dữ liệu hoặc dữ liệu không đúng.",
      });
    } else {
      const [deleteManualInCategory] = await pool.execute(
        "DELETE FROM manual WHERE Category = ?",
        [id]
      );
      const [deleteManualCategory] = await pool.execute(
        "DELETE FROM manual_category WHERE Id = ?",
        [id]
      );
      res.status(200).json({
        result: true,
        msg: "Xoá danh mục hướng dẫn sử dụng thành công.",
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

export default deleteManualCategoryController;
