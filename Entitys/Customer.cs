namespace Entitys
{
    public class Customer
    {
        private string _name;
        private string _pass;
        private string _trueName;
        private string _address;
        private string _postCode;
        private string _birthday;
        private string _phone;
        private string _email;
        private string _regDate;
        private string _question;
        private string _answer;

        /// <summary>
        /// 登录名称
        /// </summary>
        public string Name { get => _name; set => _name = value; }
        /// <summary>
        /// 登录密码，BLL层不应存在读取行为
        /// </summary>
        public string Pass { get => _pass; set => _pass = value; }
        /// <summary>
        /// 真实姓名
        /// </summary>
        public string TrueName { get => _trueName; set => _trueName = value; }
        /// <summary>
        /// 联系地址
        /// </summary>
        public string Address { get => _address; set => _address = value; }
        /// <summary>
        /// 邮政编码
        /// </summary>
        public string PostCode { get => _postCode; set => _postCode = value; }
        /// <summary>
        /// 出生日期
        /// </summary>
        public string Birthday { get => _birthday; set => _birthday = value; }
        /// <summary>
        /// 联系电话
        /// </summary>
        public string Phone { get => _phone; set => _phone = value; }
        /// <summary>
        /// E-Mail 地址
        /// </summary>
        public string Email { get => _email; set => _email = value; }
        /// <summary>
        /// 注册日期，BLL层不应存在设置行为
        /// </summary>
        public string RegDate { get => _regDate; set => _regDate = value; }
        /// <summary>
        /// 密保问题
        /// </summary>
        public string Question { get => _question; set => _question = value; }
        /// <summary>
        /// 密保问题的答案，BLL层不应存在读取行为
        /// </summary>
        public string Answer { get => _answer; set => _answer = value; }
    }
}