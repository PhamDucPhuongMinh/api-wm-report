import pool from "../configs/connectDB";
import jwt from "jsonwebtoken";

const loginController = async (req, res) => {
  try {
    const { phone, password } = req.body;
    if (!phone || !password) {
      res.status(200).json({
        result: false,
        msg: "Bạn chưa nhập dữ liệu hoặc dữ liệu không đúng.",
      });
    } else {
      const [user] = await pool.execute(
        "SELECT Id, Name, Phone, Email FROM users WHERE Phone = ? AND Password = ?",
        [phone, password]
      );
      if (user.length > 0) {
        const newToken = jwt.sign({ ...user[0] }, process.env.PRIVATE_KEY, {
          algorithm: "HS256",
          expiresIn: "15m",
        });
        res.status(200).json({
          result: true,
          msg: "Success",
          data: { ...user[0], Token: newToken },
        });
      } else {
        res.status(200).json({
          result: false,
          msg: "Số điện thoại hoặc mật khẩu không đúng.",
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

export default loginController;
