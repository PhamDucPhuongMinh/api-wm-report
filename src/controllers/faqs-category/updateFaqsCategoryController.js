import pool from "../../configs/connectDB";

const updateFaqsCategoryController = async (req, res) => {
  try {
    const { id, title } = req.body;
    if (!id || !title) {
      res.status(200).json({
        result: false,
        msg: "Bạn chưa nhập dữ liệu hoặc dữ liệu không đúng.",
      });
    } else {
      const [updateFaqsCategory] = await pool.execute(
        "UPDATE faqs_category SET Title=? WHERE Id = ?",
        [title, id]
      );
      res.status(200).json({
        result: true,
        msg: "Thay đổi danh mục câu hỏi thành công.",
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

export default updateFaqsCategoryController;
