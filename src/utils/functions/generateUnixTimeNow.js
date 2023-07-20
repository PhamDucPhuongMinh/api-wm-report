const generateUnixTimeNow = () => {
  return parseInt(Date.now().toFixed(0));
};

export default generateUnixTimeNow;
