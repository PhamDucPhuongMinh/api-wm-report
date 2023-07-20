import pool from "../../configs/connectDB";

const deleteFaqsController = async (req, res) => {
  try {
    const { id } = req.body;
    if (!id) {
      res.status(200).json({
        result: false,
        msg: "Bạn chưa nhập dữ liệu hoặc dữ liệu không đúng.",
      });
    } else {
      const [deleteFaqs] = await pool.execute("DELETE FROM faqs WHERE Id = ?", [
        id,
      ]);
      res.status(200).json({
        result: true,
        msg: "Xoá câu hỏi thành công.",
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

export default deleteFaqsController;
