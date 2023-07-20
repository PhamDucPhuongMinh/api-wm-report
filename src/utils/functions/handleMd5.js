import md5 from "crypto-js/md5";

const handleMd5 = (value) => {
  let result = `${md5(value)}`;
  result = result.toUpperCase();
  return result;
};

export default handleMd5;
