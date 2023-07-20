import jwt from "jsonwebtoken";
import pool from "../configs/connectDB";

const changePasswordController = (req, res) => {
  const token = req.headers.token;
  jwt.verify(token, process.env.PRIVATE_KEY, async function (err, decoded) {
    if (err) {
      res.status(405).json({
        result: false,
        msg: "Bạn không có quyền thực hiện hành động này. Vui lòng đăng nhập.",
      });
    } else {
      const { password, newPassword } = req.body;
      if (!password || !newPassword) {
        res.status(200).json({
          result: false,
          msg: "Bạn chưa nhập dữ liệu hoặc dữ liệu không đúng.",
        });
      } else {
        // check old password
        const [user] = await pool.execute(
          "SELECT Password FROM users WHERE Id = ? AND Password = ?",
          [decoded.Id, password]
        );
        if (user.length === 0) {
          res.status(200).json({
            result: false,
            msg: "Mật khẩu không đúng.",
          });
        } else {
          const [updatePassword] = await pool.execute(
            "UPDATE users SET Password= ? WHERE Id = ?",
            [newPassword, decoded.Id]
          );
          res.status(200).json({
            result: true,
            msg: "Thay đổi mật khẩu thành công.",
          });
        }
      }
    }
  });
};

export default changePasswordController;
