<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="reg.aspx.cs" Inherits="User_Interface_Layer.reg" %>


<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
    <meta http-equiv="pragma" content="no-cache" />
    <meta http-equiv="Cache-Control" content="no-cache,must-revalidate" />
    <title>����ע��</title>
    <link type="text/css" rel="stylesheet" href="/css/reg-base.css" />
    <script src="/js/jquery-2.1.4.min.js"></script>
    <link type="text/css" rel="stylesheet" href="/css/reg.css" />
    <link type="text/css" rel="stylesheet" href="/css/reg-dialog.css" />
</head>
<body>
    <div id="form-header" class="header">
        <div class="logo-con w clearfix">
            <a href="//www.jd.com" class="logo"></a>
            <div class="logo-title">��ӭע��</div>
            <div class="have-account">�����˺ţ� <a href="/login.aspx">���¼</a></div>
        </div>
    </div>

    <div class="ui-dialog" style="width: 947px; position: fixed; z-index: 10000; display: block; overflow: hidden; top: 146px; left: 474px; display:none;">
        <div class="ui-dialog-title" style="width: 927px;">
            <span id="dialog-title"></span>
        </div>
        <div id="dialog-content" class="ui-dialog-content" style="height: 545px; width: 927px; overflow: hidden;"></div>
        <a class="ui-dialog-close" title="�ر�"><span class="ui-icon ui-icon-delete"></span></a>
    </div>
    <div class="ui-mask" style="position: absolute; left: 0px; top: 0px; opacity: 0.15; z-index: 9998; width: 1903px; height: 1020px; background-color: rgb(0, 0, 0); display:none;"></div>
    
    <div class="container w">
        <div class="main clearfix" id="form-main">
            <div class="reg-form fl">
                <form action="#" id="register-form" method="post">
                    <!--chrome autocomplete off bug hack-->
                    <input style="display: none" name="hack" />
                    <input type="password" style="display: none" name="hack1" />
                    <div class="form-item form-item-account" id="form-item-account">
                        <label>�á�������</label>
                        <input type="text" id="form-account" name="regName" class="field" autocomplete="off" maxlength="20" placeholder="�����˻����͵�¼��" default='<i class="i-def"></i>֧�����ġ���ĸ�����֡���-����_������ϣ�4-20���ַ�' />
                        <i class="i-status"></i>
                    </div>
                    <div class="input-tip">
                        <span></span>
                    </div>
                    <div class="form-item">
                        <label>�� �� �� ��</label>
                        <input style="display: none" type="password" name="pwd" class="fakeinput" />
                        <input type="password" name="pwd" id="form-pwd" class="field" maxlength="20"  placeholder="��������ʹ�������ַ����" default="<i class=i-def></i>����ʹ����ĸ�����ֺͷ������ּ����ϵ���ϣ�6-20���ַ�" />
                        <i class="i-status"></i>
                        <div class="capslock-tip tips" style="display: none;z-index: 7;">��д�ѿ���<b class="arrow"></b><b class="arrow-inner"></b></div>
                    </div>
                    <div class="input-tip">
                        <span></span>
                    </div>
                    <div class="form-item">
                        <label>ȷ �� �� ��</label>
                        <input style="display: none" type="password" name="pwdRepeat" class="fakeinput" />
                        <input type="password" name="pwdRepeat" id="form-equalTopwd" class="field" placeholder="���ٴ���������" maxlength="20" default='<i class="i-def"></i>���ٴ���������' />
                        <i class="i-status"></i>
                        <div class="capslock-tip tips" style="display: none;z-index: 7;">��д�ѿ���<b class="arrow"></b><b class="arrow-inner"></b></div>
                    </div>
                    <div class="input-tip">
                        <span></span>
                    </div>
                    <div class="item-email-wrap">
                        <div class="form-item">
                            <label>�� �� �� ֤</label>
                            <input type="text" name="email" class="field" autocomplete="off" placeholder="����ʹ�ó�������" id="email-input" default='<i class="i-def"></i>�����֤��������ø������¼���һ�����' />
                            <i class="i-status"></i>
                        </div>
                        <div class="input-tip">
                            <span></span>
                        </div>
                    </div>
                    <div class="form-item form-item-authcode">
                        <label>�顡֤����</label>
                        <input type="text" autocomplete="off" name="authCode" id="authCode" maxlength="6" class="field form-authcode"
                            placeholder="��������֤��" default='<i class="i-def"></i>�����壿���ͼƬ������֤��' />
                        <img class="img-code" title="��һ��" id="imgAuthCode"  src="/CheckCode.aspx"/>
                    </div>
                    <div class="input-tip">
                        <span></span>
                    </div>
                    <div class="form-agreen">
                        <div>
                            <input type="checkbox" name="agreen" checked="" />�Ķ���ͬ��<a href="javascript:;" id="protocol">�������û�ע��Э�顷</a>
                            <a href="javascript:;" class="blue" id="privacyProtocolTrigger">����˽���ߡ�</a>
                        </div>
                        <div class="input-tip">
                            <span></span>
                        </div>
                    </div>
                    <div>
                        <button type="submit" class="btn-register">����ע��</button>
                    </div>

                </form>
            </div>
        </div>
        <div id="protocoldiv" style="display: none">
            <div class="protocol-con">
                <h4>�����û�ע��Э��</h4>

                <p>
                    ��Э�������뾩����վ�����;��վ;����ַ��www.jd.com�������ߣ����¼��Ϊ;����;��֮��;�����վ����������������������Լ��������ϸ�Ķ���ע��Э�飬�����;ͬ�Ⲣ����;��ť�󣬱�Э�鼴���ɶ�˫����Լ�����ķ����ļ���
                </p>
                <h5>��1�� ��վ���������ȷ�Ϻͽ���</h5>

                <p>
                    <strong>1.1</strong>��վ�ĸ�����ӷ��������Ȩ������Ȩ�龩�����С��û�ͬ������ע��Э��������ע����򣬲��ܳ�Ϊ��վ����ʽ�û����û�ȷ�ϣ���Э�������Ǵ���˫��Ȩ���������Լ��ʼ����Ч����������ǿ���Թ涨��˫�������ر�Լ���ģ�����涨��
                </p>

                <p><strong>1.2</strong>�û����ͬ�ⱾЭ��ģ�����Ϊ�û�ȷ���Լ��������ܱ�վ�����µ��������Ӧ��Ȩ����������Ϊ�������ܹ������е��������Ρ�</p>

                <p><strong>1.3</strong>�������18�������£���ֻ���ڸ�ĸ��໤�˵ļ໤�����²���ʹ�ñ�վ��</p>

                <p><strong>1.4</strong>�����������л����񹲺͹���½������ʩ��֮��������ķ�Χ�ڶ��Ծ����ܾ����񡢹ر��û��˻��������༭���ݻ�ȡ��������Ȩ����</p>
                <h5>��2�� ��վ����</h5>

                <p><strong>2.1</strong>����ͨ������������Ϊ�û��ṩ��������Ϣ�ȷ����û�����ȫͬ�ⱾЭ�鼰��վ�涨������£�����Ȩʹ�ñ�վ����ط���</p>

                <p>
                    <strong>2.2</strong>�û���������׼�������豸�ͳе����¿�֧����1�������豸�������������ڵ��Ի������������նˡ����ƽ�����������ر�������װ�ã���2��������֧���������������������ѡ������豸���÷ѡ��ֻ������ѵȡ�
                </p>
                <h5>��3�� �û���Ϣ</h5>

                <p>
                    <strong>3.1</strong>�û�Ӧ���г�����վ�ṩע�����ϣ��û�ͬ�����ṩ��ע��������ʵ��׼ȷ���������Ϸ���Ч���û�ע���������б䶯�ģ�Ӧ��ʱ������ע�����ϡ�����û��ṩ��ע�����ϲ��Ϸ�������ʵ����׼ȷ�����꾡�ģ��û���е�����������Ӧ���μ���������Ҿ���������ֹ�û�ʹ�þ�����������Ȩ����
                </p>

                <p>
                    <strong>3.2</strong>�û��ڱ�վ����������µ�����Ȼʱ���漰�û���ʵ����/���ơ�ͨ�ŵ�ַ����ϵ�绰�������������˽��Ϣ�ģ���վ�������ϸ��ܣ����ǵõ��û�����Ȩ�������й涨����վ�����������¶�û���˽��Ϣ��
                </p>

                <p>
                    <strong>3.3</strong>�û�ע��ɹ��󣬽������û�����������˻���Ϣ�������Ը��ݱ�վ�涨�ı��������롣�û�Ӧ��������ı��桢ʹ�����û��������롣�û��������κηǷ�ʹ���û��˺Ż���ڰ�ȫ©���������������֪ͨ��վ���򹫰����ر�����
                </p>

                <p><strong>3.4</strong><strong>�û�ͬ�⣬����ӵ��ͨ���ʼ������ŵ绰����ʽ�����ڱ�վע�ᡢ�����û����ջ��˷��Ͷ�����Ϣ��������ȸ�֪��Ϣ��Ȩ����</strong></p>

                <p><strong>3.5</strong><strong>�û����ý��ڱ�վע���õ��˻��������ʹ�ã������û�Ӧ�е��ɴ˲�����ȫ�����Σ�����ʵ��ʹ���˳е��������Ρ�</strong></p>

                <p><strong>3.6</strong><strong>�û�ͬ�⣬������Ȩʹ���û���ע����Ϣ���û������������Ϣ����¼�����û���ע���˻�������֤�ݱ�ȫ�������������ڹ�֤����֤�ȡ�</strong></p>
                <h5>��4�� �û�������������</h5>

                <p>��Э�����ݹ�����ط��ɷ�������ƶ����û�ͬ���ϸ�������������</p>

                <p>
                    <strong>��1��</strong>���ô���򷢱�ɿ�����ܡ��ƻ��ܷ��ͷ��ɡ���������ʵʩ�����ۣ�ɿ���߸�������Ȩ���Ʒ���������ƶȵ����ۣ�ɿ�����ѹ��ҡ��ƻ�����ͳһ�ĵ����ۣ�ɿ�������ޡ��������ӡ��ƻ������Ž�����ۣ�
                </p>

                <p><strong>��2��</strong>���й���½���⴫��������Ϣʱ��������й��йط��棻</p>

                <p><strong>��3��</strong>�������ñ�վ����ϴǮ����ȡ��ҵ���ܡ���ȡ������Ϣ��Υ�������� </p>

                <p><strong>��4��</strong>���ø��ű�վ��������ת���������뱾վ�����Ҽ������Ϣϵͳ��</p>

                <p><strong>��5��</strong>���ô���򷢱��κ�Υ������ġ�ɧ���Եġ��������˵ġ������Եġ������Եġ��˺��Եġ�ӹ�׵ģ�����ġ��������ĵ���Ϣ���ϣ�</p>

                <p><strong>��6��</strong>���ô���򷢱��𺦹�����ṫ��������漰���Ұ�ȫ����Ϣ���ϻ����ۣ�</p>

                <p><strong>��7��</strong>���ý������˴��±�������ֹ����Ϊ��</p>

                <p><strong>��8��</strong>���������ڱ�վע����˻�����Ĳ���Ծ�Ӫ���</p>

                <p><strong>��9��</strong>���÷����κ��ַ���������Ȩ���̱�Ȩ��֪ʶ��Ȩ��Ϸ�Ȩ�������ݣ�</p>

                <p>�û�Ӧ��ʱ��ע�����ر�վ��ʱ�������޸ĵĸ���Ϸ�����涨��</p>

                <p><strong>��վ����ɾ��վ�ڸ��಻���Ϸ������߻���ʵ����Ϣ���ݶ�����֪ͨ�û���Ȩ����</strong></p>

                <p><strong>���û�δ�������Ϲ涨�ģ���վ��Ȩ���������жϲ���ȡ��ͣ��ر��û��ʺŵȴ�ʩ��</strong>�û�����Լ������ϵ����ۺ���Ϊ�е��������Ρ�</p>
                <h5>��5�� ��Ʒ��Ϣ</h5>

                <p>
                    ��վ�ϵ���Ʒ�۸��������Ƿ��л�����Ʒ��Ϣ��ʱ���п��ܷ����䶯����վ�����ر�֪ͨ��������վ����Ʒ��Ϣ�����������Ӵ���Ȼ��վ�ᾡ���Ŭ����֤���������Ʒ��Ϣ��׼ȷ�ԣ�������������֪�Ļ������������صȿ͹�ԭ����ڣ���վ��ҳ��ʾ����Ϣ���ܻ���һ�����ͺ��Ի����Դ�������֪Ϥ����⣻������ӭ����������������������һ���Ľ�����
                </p>

                <p>Ϊ������������Ʒ�ͷ�����Ϊ;��Ʒ;��;����;��</p>
                <h5>��6�� ����</h5>

                <p>
                    <strong>6.1</strong>�����¶���ʱ��������ϸȷ��������Ʒ�����ơ��۸��������ͺš���񡢳ߴ硢��ϵ��ַ���绰���ջ��˵���Ϣ��<span>�ջ������û����˲�һ�µģ��ջ��˵���Ϊ����˼��ʾ��Ϊ�û�����Ϊ����˼��ʾ���û�Ӧ���ջ��˵���Ϊ����˼��ʾ�ķ��ɺ���е��������Ρ�</span>
                </p>

                <p>
                    <strong>6.2</strong><strong>����������ǿ���Թ涨�⣬˫��Լ�����£���վ�����۷�չʾ����Ʒ�ͼ۸����Ϣ�����ǽ�����Ϣ�ķ��������µ�ʱ����д��ϣ���������Ʒ�������ۿ֧����ʽ���ջ��ˡ���ϵ��ʽ���ջ���ַ�����ݣ�ϵͳ���ɵĶ�����Ϣ�Ǽ������Ϣϵͳ��������д�������Զ����ɵ����ݣ������������۷������Ľ����������۷��յ����Ķ�����Ϣ��ֻ�������۷������ڶ����ж�������Ʒ�Ӳֿ�ʵ��ֱ����������ʱ��
                ����Ʒ����Ϊ��־��������Ϊ�������۷�֮���ʵ��ֱ��������������Ʒ�����˽��׹�ϵ���������һ�ݶ����ﶩ���˶�����Ʒ�������۷�ֻ���������˲�����Ʒʱ���������۷�֮�����ʵ��ֱ��������������Ʒ�����˽��׹�ϵ��ֻ�������۷�ʵ��ֱ�����������˶����ж�����������Ʒʱ���������۷�֮��Ͷ����и�������ʵ��ֱ��������������Ʒ�ų������׹�ϵ����������ʱ��¼���ڱ�վע����˻�����ѯ���Ķ���״̬��</strong>
                </p>

                <p>
                    <strong>6.3</strong><strong>�����г��仯�������Ժ�����ҵŬ�����Կ��Ƶ����ص�Ӱ�죬��վ�޷���֤���ύ�Ķ�����Ϣ��ϣ���������Ʒ�����л��������⹺�����Ʒ������ȱ��������Ȩȡ��������</strong>
                </p>
                <h5>��7�� ����</h5>

                <p>
                    <strong>7.1</strong>���۷��������Ʒ������͵�����ָ�����ջ���ַ�������ڱ�վ���г����ͻ�ʱ��Ϊ�ο�ʱ�䣬�ο�ʱ��ļ����Ǹ��ݿ��״���������Ĵ�����̺��ͻ�ʱ�䡢�ͻ��ص�Ļ����Ϲ��Ƶó��ġ�
                </p>

                <p><strong>7.2</strong>�����������ɶ����ӳٻ��޷����͵ȣ����۷����е��ӳ����͵����Σ�</p>

                <p><strong>��1��</strong>�û��ṩ����Ϣ���󡢵�ַ����ϸ��ԭ���µģ� </p>

                <p><strong>��2��</strong>�����ʹ������ǩ�գ������޷����ͻ��ӳ����͵ģ�</p>

                <p><strong>��3��</strong>���Ʊ�����ص��µģ�</p>

                <p><strong>��4��</strong>���ɿ������ص��µģ����磺��Ȼ�ֺ�����ͨ���ϡ�ͻ��ս���ȡ�</p>
                <h5>��8�� ����Ȩ��֪ʶ��Ȩ����</h5>

                <p>
                    <strong>8.1</strong><strong>�û�һ�����ܱ�Э�飬���������û������������κ�ʱ����ڱ�վ������κ���ʽ����Ϣ���ݣ������������ڿͻ����ۡ��ͻ���ѯ�����໰�����µ���Ϣ���ݣ��ĲƲ���Ȩ�����κο�ת�õ�Ȩ����������Ȩ�Ʋ�Ȩ�������������ڣ�����Ȩ������Ȩ������Ȩ��չ��Ȩ������Ȩ����ӳȨ���㲥Ȩ����Ϣ���紫��Ȩ������Ȩ���ı�Ȩ������Ȩ�����Ȩ�Լ�Ӧ��������Ȩ�����е�������ת��Ȩ������ȫ�������Ҳ��ɳ�����ת�ø��������У��û�ͬ�⾩����Ȩ���κ�������Ȩ�������������ϡ�</strong>
                </p>

                <p>
                    <strong>8.2</strong><strong>��Э���Ѿ����ɡ��л����񹲺͹�����Ȩ�����ڶ�ʮ�����������������2011�������Ȩ��ȷ��������ط��ɹ涨�������Ʋ�Ȩ��Ȩ��ת������Э�飬��Ч�������û��ھ�����վ�Ϸ������κ�������Ȩ����������Ʒ���ݣ����۸õ������γ��ڱ�Э�鶩��ǰ���Ǳ�Э�鶩����</strong>
                </p>

                <p>
                    <strong>8.3</strong><strong>�û�ͬ�Ⲣ�ѳ���˽ⱾЭ��������ŵ�����ѷ����ڱ�վ����Ϣ�����κ���ʽ��������Ȩ�����������κη�ʽʹ�ã��������������ڸ�����վ��ý����ʹ�ã���</strong>
                </p>

                <p>
                    <strong>8.4</strong><strong>�����Ǳ�վ��������,ӵ�д���վ���ݼ���Դ������Ȩ�ȺϷ�Ȩ��,�ܹ��ҷ��ɱ���,��Ȩ��ʱ�ضԱ�Э�鼰��վ�����ݽ����޸ģ����ڱ�վ��������������֪ͨ�û����ڷ������������޶ȷ�Χ�ڣ������Ա�Э�鼰��վ����ӵ�н���Ȩ��</strong>
                </p>

                <p>
                    <strong>8.5</strong><strong>����������ǿ���Թ涨�⣬δ��������ȷ���ر��������,�κε�λ����˲������κη�ʽ�Ƿ���ȫ���򲿷ָ��ơ�ת�ء����á����ӡ�ץȡ����������ʽʹ�ñ�վ����Ϣ���ݣ����򣬾�����Ȩ׷���䷨�����Ρ�</strong>
                </p>

                <p>
                    <strong>8.6</strong>��վ�����ǵ�������Ϣ���������֡�ͼ����ʶ����ťͼ�ꡢͼ�������ļ�Ƭ�Ρ��������ء����ݱ༭������������Ǿ������������ṩ�ߵĲƲ������й��͹��ʰ�Ȩ���ı�������վ���������ݵĻ���Ǿ����������Ʋ������й��͹��ʰ�Ȩ���ı�������վ������������Ǿ������������˾���������Ӧ�̵ĲƲ������й��͹��ʰ�Ȩ���ı�����
                </p>
                <h5>��9�� �������Ƽ�����ŵ����</h5>

                <p>
                    <strong>����������ȷ������˵��,��վ�����������Ļ���������ʽͨ����վ�ṩ������ȫ����Ϣ�����ݡ����ϡ���Ʒ������������ͷ��񣬾�����;����״;��;������;�Ļ������ṩ�ġ�</strong>
                </p>

                <p>
                    <strong>����������ȷ������˵��,�������Ա�վ����Ӫ��������ڱ���վ�ϵ���Ϣ�����ݡ����ϡ���Ʒ�������������������κ���ʽ�ġ���ʾ��Ĭʾ�������򵣱��������л����񹲺͹��������й涨�����⣩��</strong>
                </p>

                <p><strong>������������վ�������Ļ���������ʽͨ����վ�ṩ������ȫ����Ϣ�����ݡ����ϡ���Ʒ������������ͷ������������ӱ�վ�����ĵ����ż�����Ϣû�в����������к��ɷ֡�</strong></p>

                <p><strong>���򲻿ɿ�����������վ�޷����Ƶ�ԭ��ʹ��վ����ϵͳ�������޷�����ʹ�õ������Ͻ����޷���ɻ�ʧ�йص���Ϣ����¼�ȣ����������ؾ���Э�������ƺ����ˡ�</strong></p>
                <h5>��10�� Э����¼��û���ע����</h5>
                ���ݹ��ҷ��ɷ���仯����վ��Ӫ��Ҫ��������Ȩ�Ա�Э�����ʱ�ؽ����޸ģ��޸ĺ��Э��һ���������ڱ�վ�ϼ���Ч��������ԭ����Э�顣�û�����ʱ��¼��������Э�飻
            <strong><em>�û�������ʱ��ע���Ķ����°��Э�鼰��վ���档���û���ͬ����º��Э�飬������Ӧ����ֹͣ���ܾ�����վ���ݱ�Э���ṩ�ķ������û�����ʹ�ñ���վ�ṩ�ķ���ģ�����Ϊͬ����º��Э�顣������������ʹ�ñ�վ֮ǰ�Ķ���Э�鼰��վ�Ĺ��档</em></strong>
                �����Э�����κ�һ������Ϊ��ֹ����Ч�����κ����ɲ���ִ�У�����Ӧ��Ϊ�ɷֵ��Ҳ���Ӱ���κ������������Ч�ԺͿ�ִ���ԡ�
            <h5>��11�� ���ɹ�Ͻ������</h5>
                ��Э��Ķ�����ִ�кͽ��ͼ�����Ľ����Ӧ�������л����񹲺͹���½��������֮��Ч���ɣ������������ͻ�����򣩡�
            �緢����Э��������֮������ִ�ʱ������Щ�����ȫ�����ɹ涨���½��ͣ���������Ч���������Ч��
            ���Լ���ͱ�Э�����ݻ���ִ�з����κ����飬˫��Ӧ�����Ѻ�Э�̽����Э�̲���ʱ���κ�һ���������й�ϽȨ���л����񹲺͹���½������Ժ�������ϡ�
            <h5>��12�� ���� </h5>

                <p><strong>12.1</strong>������վ��������ָ����������������ɻ򱸰��ľ�����վ��Ӫ���塣</p>

                <p>
                    <strong>12.2</strong>���������û��������ߵĺϷ�Ȩ������Э�鼰����վ�Ϸ����ĸ�������������������ݣ�����Ϊ�˸��õġ����ӱ�����Ϊ�û����������ṩ���񡣱�վ��ӭ�û����������������ͽ��飬���������Ľ��ܲ���ʱ�޸ı�Э�鼰��վ�ϵĸ������
                </p>

                <p><strong>12.3</strong><span>��Э���������Ժ��塢�Ӵ֡��»��ߡ�б��ȷ�ʽ������ʶ��������û������Ķ���</span></p>

                <p>
                    <strong>12.4</strong><span>�������Э���·���;ͬ�Ⲣ����;��ť����Ϊ����ȫ���ܱ�Э�飬�ڵ��֮ǰ�����ٴ�ȷ����֪Ϥ����ȫ��ⱾЭ���ȫ�����ݡ�</span>
                </p>

            </div>
            <div class="protocol-button">
                <button>ͬ�Ⲣ����</button>
            </div>
        </div>
        <div id="privacyProtocol" style="display: none">
            <div class="protocol-con">

                <p class="MsoNormal" style="text-align: center; line-height: 150%">
                    <b>
                        <span style="line-height: 150%;">��˽����</span>
                    </b>
                    <span style="line-height: 150%;"></span>
                </p>

                <p class="MsoNormal" style="line-height: 150%">
                    <span style="line-height: 150%;"></span>
                </p>

                <p class="MsoNormal" style="line-height: 150%">
                    <span style="line-height: 150%;">���������»�ơ����ǡ���ע�ر����û�������Ϣ��������˽������˽���߽������û�����������������Ϣ�ռ������»�ơ���Ϣ������ʹ�õ��й����������˽���������ھ��������ṩ��������ط��񣨰����������ڵ�������������Ѷ�������罻�����������ڷ���ȣ����³ơ��������񡱻򡰷��񡱣���<b>�������ͬ�Ȿ��˽���ߵ��κ����ݣ���Ӧ����ֹͣʹ�þ������񡣵���ʹ�þ����ṩ����һ����ʱ������ʾ����ͬ�����ǰ��ձ���˽�������Ϸ�ʹ�úͱ������ĸ�����Ϣ��</b><span></span></span>
                </p>

                <p class="MsoNormal" style="line-height: 150%">
                    <span style="font-size: 12.0pt; line-height: 150%;"></span>
                </p>

                <p class="MsoNormal" style="line-height: 150%">
                    <b><span style="line-height: 150%;">һ����������Ϣ���ռ�</span></b><span style="line-height: 150%;"></span>
                </p>

                <p class="MsoNormal" style="line-height: 150%">
                    <span style="font-size: 12.0pt; line-height: 150%;"></span>
                </p>

                <p class="MsoNormal" style="line-height: 150%">
                    <span style="line-height: 150%;">�����ռ���Ϣ��Ϊ�������ṩ�����Լ������Ի��ķ��񣬲�Ŭ����������û����顣�����ռ���Ϣ���������£�<span></span></span>
                </p>

                <p class="MsoNormal" style="line-height: 150%">
                    <b><span
                        style="line-height: 150%;">1</span></b><b><span
                            style="line-height: 150%;">�����������ṩ����Ϣ</span></b><span
                                style="line-height: 150%;"></span>
                </p>

                <p class="MsoNormal" style="line-height: 150%">
                    <span style="line-height: 150%;">����ע�ᾩ���˻�������ʹ����ؾ�������ʱ��д���ύ��<span>/</span>�������κη�ʽ�ṩ����Ϣ�����������������Ա𡢳��������ա����֤���롢�����ա������������պ��롢�绰���롢�������䡢�ջ���ַ������Ǯ�������������˺š����п���Ϣ����ظ�����Ϣ��������ַ�е����ڵ�ʡ�ݺͳ��С���������ȣ���<b>������ѡ���ṩĳһ��ĳЩ��Ϣ��������������ʹ���޷�ʹ�þ����������ɫ����</b>������⣬����ʹ�����ṩ����Ϣ��Ϊ�˻�Ӧ����Ҫ��Ϊ���ھ�����������ܷ����ṩ���������ƾ�����վ�Լ�����������Ϣ��ͨ�����⣬���ǿ��ܻὫ�����ṩ����Ϣ�����ľ����˻�����������ʶ��������ݡ�<span></span></span>
                </p>

                <p class="MsoNormal" style="line-height: 150%">
                    <b><span
                        style="line-height: 150%;">2</span></b><b><span
                            style="line-height: 150%;">����������ʹ�÷�������л�õ���Ϣ<span></span></span></b>
                </p>

                <p class="MsoNormal" style="line-height: 150%">
                    <span style="line-height: 150%;">Ϊ����߷����������û����飬���ǻ�������ʹ�÷����Լ�ʹ�÷�ʽ�������Ϣ��������Ϣ������<span></span></span>
                </p>

                <p class="MsoNormal" style="line-height: 150%">
                    <b><span style="line-height: 150%;">��<span>1</span>������������ͼ�����ϵ���Ϣ��</span></b><span
                        style="line-height: 150%;">�������ʾ�����վ��ʹ�þ�������ʱ������ϵͳ�Զ����ղ���¼������������ͼ�����ϵ���Ϣ������������������<span>IP</span>��ַ������������͡�ʹ�õ����ԡ��������ں�ʱ�䡢��Ӳ��������Ϣ�����������ҳ��¼�����ݣ���<span></span></span>
                </p>

                <p class="MsoNormal" style="line-height: 150%">
                    <b><span style="line-height: 150%;">��<span>2</span>������λ����Ϣ��</span></b><span style="line-height: 150%;">�������ػ�ʹ�þ��������������������鿪����Ӧ�ó������義��<span>APP</span>����������ƶ���ҳʹ�þ�������ʱ���������ܻ��ȡ����λ�ã�������ƶ��豸���������رն�λ���񣬾��彨������ϵ�����ƶ��豸�ķ����̻������̣���<span></span></span>
                </p>

                <p class="MsoNormal" style="line-height: 150%">
                    <b><span style="line-height: 150%;">��<span>3</span>�������豸��Ϣ��</span></b><span style="line-height: 150%;">�������ܻ��ȡ�����ʾ�����ʹ�þ�������ʱ��ʹ�õ��ն��豸����Ϣ���������������豸�ͺš��豸ʶ���롢����ϵͳ���ֱ��ʡ�������Ӫ�̵ȡ�<span lang=" EN-US">
                    </span></span>
                </p>

                <p class="MsoNormal" style="line-height: 150%">
                    <b><span style="line-height: 150%;">��<span>4</span>��������Ϊ������Ϣ��</span></b><span style="line-height: 150%;">�������ܻ��¼�����ʾ�����ʹ�þ�������ʱ�����еĲ����Լ����ھ�����վ�Ͻ��н��׵������Ϣ��<span></span></span>
                </p>

                <p class="MsoNormal" style="line-height: 150%">
                    <span style="line-height: 150%;">��������Ϣ�⣬���ǻ�����Ϊ���ṩ���񼰸Ľ����������ĺ�����Ҫ����õ�����������Ϣ�������������ǵĿͷ��Ŷ���ϵʱ���ṩ�������Ϣ���������ʾ����ʱ�����Ƿ��͵��ʾ����Ϣ���Լ����뾩���Ĺ������������������֮�以��ʱ���ǻ�õ������Ϣ��<span></span></span>
                </p>

                <p class="MsoNormal" style="line-height: 150%">
                    <span style="line-height: 150%;">ͬʱ��Ϊ�����ʹ�þ����ṩ�ķ���İ�ȫ�ԣ���׼ȷ��Ԥ��������վ��թ��ľ���������ǿ��ܻ�ͨ���˽�һЩ��������ʹ��ϰ�ߡ������õ������Ϣ���ֶ����ж����˻��ķ��գ������ܻ��¼һЩ������Ϊ�з��յ����ӣ���<span>URL</span>������<span></span></span>
                </p>

                <p class="MsoNormal" style="line-height: 150%">
                    <b><span
                        style="line-height: 150%;">3</span></b><b><span
                            style="line-height: 150%;">�����Ե���������Ϣ</span></b><span
                                style="line-height: 150%;"></span>
                </p>

                <p class="MsoNormal" style="line-height: 150%">
                    <span style="line-height: 150%;">ָ����ע�ᾩ���˻���ʹ�÷�������У�����Ȩ�ľ������򾩶��Ĺ�����������������ռ��������Ϣ���Լ�����Ȩ�ľ����Ĺ����������������򾩶�������ص���Ϣ����Щ��Ϣ���������������������Ϣ����Ϊ��Ϣ��������Ϣ���豸��Ϣ�ȣ������Ὣ������Ϣ���ܣ����ڰ������������ṩ�����Լ����Ӹ��Ի��ķ������õ�Ԥ����������թ��<span></span></span>
                </p>

                <p class="MsoNormal" style="line-height: 150%">
                    <b><span style="line-height: 150%;">���˽Ⲣͬ�⣬������Ϣ�����ñ���˽���ߣ�<span></span></span></b>
                </p>

                <p class="MsoNormal" style="line-height: 150%">
                    <span style="line-height: 150%;">��<span>1</span>������ʹ�þ����ṩ����������ʱ����Ĺؼ�����Ϣ��<span></span></span>
                </p>

                <p class="MsoNormal" style="line-height: 150%">
                    <span style="line-height: 150%;">��<span>2</span>���������ۡ�Υ�����ɷ���涨��Υ������ƽ̨������Ϊ�������Ѷ�����ȡ�Ĵ�ʩ��<span></span></span>
                </p>

                <p class="MsoNormal" style="line-height: 150%">
                    <span style="line-height: 150%;">��<span>3</span>��Ӧ���ɷ���Ҫ���蹫ʾ����ҵ���Ƶ���ع���ע����Ϣ�Լ���Ȼ�˾�Ӫ�ߵ���Ϣ��<span></span></span>
                </p>

                <p class="MsoNormal" style="line-height: 150%">
                    <span style="line-height: 150%;">��<span>4</span>���������뾩���򾩶��Ĺ�������ǩ���Э�飨��������ǩ��ĵ���Э�飬���硶�����û�ע��Э�顷���Լ�����ƽ̨��������ȷԼ������ʾ�������ñ���˽���ߵ������йص���Ϣ��<span></span></span>
                </p>

                <p class="MsoNormal" style="line-height: 150%">
                    <b><span
                        style="line-height: 150%;"></span></b>
                </p>

                <p class="MsoNormal" style="line-height: 150%">
                    <b><span style="line-height: 150%;">�������Ƕ���������Ϣ�Ĺ����ʹ��<span></span></span></b>
                </p>

                <p class="MsoNormal" style="line-height: 150%">
                    <span style="font-size: 12.0pt; line-height: 150%;"></span>
                </p>

                <p class="MsoNormal" style="line-height: 150%">
                    <span style="line-height: 150%;">Ϊ�����ṩ�����������ǵķ��������Լ��Ż����ķ������飬���ǻ��ڷ��Ϸ��ɹ涨���������Ȩ�������ʹ�����ĸ�����Ϣ������Ҫ����������;��<span></span></span>
                </p>

                <p class="MsoNormal" style="line-height: 150%">
                    <span style="font-size: 12.0pt; line-height: 150%;">1</span><span style="line-height: 150%;">�������ṩ��ʹ�õĸ�����񣬲�ά�����Ľ���Щ����<span></span></span>
                </p>

                <p class="MsoNormal" style="line-height: 150%">
                    <span style="font-size: 12.0pt; line-height: 150%;">2</span><span style="line-height: 150%;">�������Ƽ������ܸ���Ȥ�����ݣ�����������������������Ʒ�ͷ�����Ϣ����ͨ��ϵͳ����չʾ���Ի��ĵ������ƹ���Ϣ������������ͬ���������뾩���ĺ�����鹲����Ϣ�Ա��������������й����Ʒ�ͷ������Ϣ��������ϣ������������Ϣ����ͨ����Ӧ���˶����ܽ����˶���<span></span></span>
                </p>

                <p class="MsoNormal" style="line-height: 150%">
                    <span style="font-size: 12.0pt; line-height: 150%;">3</span><span style="line-height: 150%;">�����ǿ���ʹ�����ĸ�����Ϣ����֤��ݡ�Ԥ�������֡�������թ��Σ����ȫ���Ƿ���Υ�������ǻ��������Э�顢���߻�������Ϊ���Ա����������������û��������ǻ���������ĺϷ�Ȩ�档<span></span></span>
                </p>

                <p class="MsoNormal" style="line-height: 150%">
                    <span style="font-size: 12.0pt; line-height: 150%;">4</span><span style="line-height: 150%;">�����ǿ��ܻὫ����ĳ�����ĸ�����Ϣ������������������õ���Ϣ�������������Ϊ�˸����ṩ���Ӹ��Ի��ķ���ʹ�ã�����Ϊ����ͨ������ӵ�и��㷺���罻Ȧ��ʹ�á��������¶������Ϣ��<span></span></span>
                </p>

                <p class="MsoNormal" style="line-height: 150%">
                    <span style="font-size: 12.0pt; line-height: 150%;">5</span><span style="line-height: 150%;">�����ǻ�����ǵķ���ʹ���������ͳ�ƣ������ܻ��빫�ڻ������������Щͳ����Ϣ����չʾ���ǵĲ�Ʒ����������ʹ�����ơ�����Щͳ����Ϣ�����������κ����ʶ����Ϣ��<span></span></span>
                </p>

                <p class="MsoNormal" style="line-height: 150%">
                    <span style="font-size: 12.0pt; line-height: 150%;">6</span><span style="line-height: 150%;">�����������й����ǲ�Ʒ������ĵ��顣<span></span></span>
                </p>

                <p class="MsoNormal" style="line-height: 150%">
                    <span style="font-size: 12.0pt; line-height: 150%;">7</span><span style="line-height: 150%;">������ͬ�����Ȩ��������;��<span></span></span>
                </p>

                <p class="MsoNormal" style="line-height: 150%">
                    <span style="font-size: 12.0pt; line-height: 150%;"></span>
                </p>

                <p class="MsoNormal" style="line-height: 150%"><b><span style="line-height: 150%;">������������Ϣ�ķ���<span></span></span></b></p>

                <p class="MsoNormal" style="line-height: 150%">
                    <span style="font-size: 12.0pt; line-height: 150%;"></span>
                </p>

                <p class="MsoNormal" style="line-height: 150%">
                    <span style="line-height: 150%;">���ĸ�����Ϣ������Ϊ���ṩ�������Ҫ���֣����ǻ���ѭ���ɹ涨��������Ϣ�е���������<b>�������������⣬���ǲ��Ὣ���ĸ�����Ϣ��¶��������</b>��<span></span></span>
                </p>

                <p class="MsoNormal" style="line-height: 150%">
                    <span style="font-size: 12.0pt; line-height: 150%;">1</span><span style="line-height: 150%;">����������ͬ�����Ȩ��<span></span></span>
                </p>

                <p class="MsoNormal" style="line-height: 150%">
                    <span style="font-size: 12.0pt; line-height: 150%;">2</span><span style="line-height: 150%;">�����ݷ��ɷ���Ĺ涨��������˾��������Ҫ��<span></span></span>
                </p>

                <p class="MsoNormal" style="line-height: 150%">
                    <span style="font-size: 12.0pt; line-height: 150%;">3</span><span style="line-height: 150%;">������ʵ�֡����Ƕ���������Ϣ�Ĺ����ʹ�á���������Ŀ�ģ���Ϊ���������ڡ������û�ע��Э�顷����˽�����е��������ʹ���ǵ�Ȩ�����򾩶��Ĺ������������������������ĳ��ְ�ܵĵ�����������������Ƿ�������֪ͨ��ͨѶ�����̡��������п���֧�������ȣ��������ĸ�����Ϣ��<span></span></span>
                </p>

                <p class="MsoNormal" style="line-height: 150%">
                    <span style="font-size: 12.0pt; line-height: 150%;">4</span><span style="line-height: 150%;">���������ʸ��֪ʶ��ȨͶ���˲�������Ͷ�ߣ�Ӧ��Ͷ����Ҫ����Ͷ������¶���Ա�˫��������ܲ�����Ȩ�����ס�<span></span></span>
                </p>

                <p class="MsoNormal" style="line-height: 150%">
                    <span style="font-size: 12.0pt; line-height: 150%;">5</span><span
                        style="line-height: 150%;">��ֻ�й���������Ϣ�������ṩ����Ҫ�ķ��񣬻����������˵ľ��׻����顣<span></span></span>
                </p>

                <p class="MsoNormal" style="line-height: 150%">
                    <span style="font-size: 12.0pt; line-height: 150%;">6</span><span style="line-height: 150%;">��������Υ���й��йط��ɡ�����涨����Υ�����뾩��ǩ������Э�飨��������ǩ��ĵ���Э�飩��Υ����ؾ���ƽ̨����ʱ��Ҫ���������¶�����Ρ�<span></span></span>
                </p>

                <p class="MsoNormal" style="line-height: 150%">
                    <span style="font-size: 12.0pt; line-height: 150%;">7</span><span style="line-height: 150%;">��Ϊά��������������������������û��ĺϷ�Ȩ�档<span></span></span>
                </p>

                <p class="MsoNormal" style="line-height: 150%">
                    <b><span style="line-height: 150%;">��������ҵ��ķ�չ�����Ǽ����ǵĹ������п��ܽ��кϲ����չ����ʲ�ת�û����ƵĽ��ף����ĸ�����Ϣ�п�����Ϊ���ཻ�׵�һ���ֶ���ת�ơ����ǽ���ת��ǰ֪ͨ����<span></span></span></b>
                </p>

                <p class="MsoNormal" style="line-height: 150%">
                    <b><span
                        style="line-height: 150%;"></span></b>
                </p>

                <p class="MsoNormal" style="line-height: 150%">
                    <b><span style="line-height: 150%;">�ġ���������Ϣ�İ�ȫ</span></b><span style="line-height: 150%;"></span>
                </p>

                <p class="MsoNormal" style="line-height: 150%">
                    <span style="font-size: 12.0pt; line-height: 150%;"></span>
                </p>

                <p class="MsoNormal" style="line-height: 150%">
                    <span style="line-height: 150%;">�����ϸ񱣻����ĸ�����Ϣ��ȫ������ʹ�ø����ƶȡ���ȫ�����ͳ���ȴ�ʩ���������ĸ�����Ϣ����δ����Ȩ�ķ��ʡ��۸ġ���¶���ƻ�������������ǵĸ�����Ϣ�������κ����ʣ�����ϵ���ǵĿͷ���<span></span></span>
                </p>

                <p class="MsoNormal" style="line-height: 150%">
                    <span style="line-height: 150%;">��ͨ��������վ�����������������Ʒ�����Ľ���ʱ�������ɱ����Ҫ���׶Է���Ǳ�ڵĽ��׶Է���¶�Լ��ĸ�����Ϣ�������緽ʽ����������ַ�ȡ��������Ʊ����Լ��ĸ�����Ϣ�����ڱ�Ҫ���������������ṩ�����������Լ��ĸ�����Ϣй�ܣ�����������˻������뷢��й¶�����������������ǵĿͷ����Ա����ǲ�ȡ��Ӧ��ʩ��<span></span></span>
                </p>

                <p class="MsoNormal" style="line-height: 150%">
                    <span style="font-size: 12.0pt; line-height: 150%;"></span>
                </p>

                <p class="MsoNormal" style="line-height: 150%">
                    <b><span style="line-height: 150%;">�塢���ʺ͸������ĸ�����Ϣ</span></b><span style="line-height: 150%;"></span>
                </p>

                <p class="MsoNormal" style="line-height: 150%">
                    <span style="font-size: 12.0pt; line-height: 150%;"></span>
                </p>

                <p class="MsoNormal" style="line-height: 150%">
                    <span style="line-height: 150%;">�������ڡ��ҵľ�����ҳ��ġ��˻����á��˵��в������ύ�����������и�����Ϣ����Ҳ��ͨ������;�����³�ʵ����֤��Ϣ֮�������������Ϣ������ʵ����֤��Ϣ����ͨ��ʵ����֤ʱʹ�õ����������֤��Ϣ����������Ҫ�������ʵ����֤��Ϣ�����ɲ���95118 ����������������<span></span></span>
                </p>

                <p class="MsoNormal" style="line-height: 150%">
                    <span style="font-size: 12.0pt; line-height: 150%;"></span>
                </p>

                <p class="MsoNormal" style="line-height: 150%">
                    <b><span style="line-height: 150%;">����<span>Cookie </span>������<span> Beacon</span>��ʹ��</span></b><span
                        style="line-height: 150%;"></span>
                </p>

                <p class="MsoNormal" style="line-height: 150%">
                    <span style="font-size: 12.0pt; line-height: 150%;"></span>
                </p>

                <p class="MsoNormal" style="line-height: 150%">
                    <span style="font-size: 12.0pt; line-height: 150%;">1</span><span style="line-height: 150%;">��<span>Cookie</span>��ʹ��<span></span></span>
                </p>

                <p class="MsoNormal" style="line-height: 150%">
                    <span style="font-size: 12.0pt; line-height: 150%;">Cookie</span><span
                        style="line-height: 150%;">������ҳ��������������ķ����豸�ϵ��ı��ļ���ָ��������<span>Cookie </span>��Ψһ�ģ���ֻ�ܱ���<span>Cookie</span>�������������е�<span>Web</span>��������ȡ��<span></span></span>
                </p>

                <p class="MsoNormal" style="line-height: 150%">
                    <span style="line-height: 150%;">����ʹ��<span> Cookie </span>��������ʵ��������������ĸ��Ի���ʹ���ھ��������������ø����ɵķ������顣���磬<span>Cookie </span>��������ں������ʾ�����վʱ����������Ϣ���򻯼�¼����д������Ϣ������һ����¼�ȣ������̣�Ϊ���ṩ��ȫ�����ƫ�����ã��������Ż��Թ���ѡ���뻥���������������ݰ�ȫ�ȡ�<span></span></span>
                </p>

                <p class="MsoNormal" style="line-height: 150%">
                    <span style="line-height: 150%;">����Ȩ���ܻ�ܾ�<span>Cookie</span>���������������Զ�����<span>Cookie</span>������ͨ���ɸ����Լ�����Ҫ���޸�������������Ծܾ�<span> Cookie</span>�����ѡ��ܾ� <span>Cookie</span>����ô�������޷���ȫ���������ʵľ�����վ��ĳЩ�����ȫ�����ܡ�<span></span></span>
                </p>

                <p class="MsoNormal" style="line-height: 150%">
                    <span style="font-size: 12.0pt; line-height: 150%;">2</span><span style="line-height: 150%;">������<span>Beacon</span>��ʹ��<span></span></span>
                </p>

                <p class="MsoNormal" style="line-height: 150%">
                    <span style="line-height: 150%;">������ҳ�ϳ������һЩ����ͼ�󣨳�Ϊ<span>"</span>������<span>" GIF </span>�ļ���<span> "</span>����<span> beacon"</span>�������ǿ��԰�����վ���������ҳ���û������ĳЩ<span>cookie</span>������ʹ������<span>beacon</span>�ķ�ʽ�У�<span></span></span>
                </p>

                <p class="MsoNormal" style="line-height: 150%">
                    <span style="line-height: 150%;">��<span>1</span>������ͨ���ھ�����վ��ʹ������<span>beacon</span>�������û�������������ͨ������<span> cookie </span>����ע���û��� <span></span></span>
                </p>

                <p class="MsoNormal" style="line-height: 150%">
                    <span style="line-height: 150%;">��<span>2</span>������ͨ���õ���<span>cookie</span>��Ϣ�������ھ�����վ�ṩ���Ի�����<span></span></span>
                </p>

                <p class="MsoNormal" style="line-height: 150%">
                    <span style="font-size: 12.0pt; line-height: 150%;"></span>
                </p>

                <p class="MsoNormal" style="line-height: 150%">
                    <b><span style="line-height: 150%;">�ߡ�δ�����˵ĸ�����Ϣ����</span></b><span style="line-height: 150%;"></span>
                </p>

                <p class="MsoNormal" style="line-height: 150%">
                    <span style="font-size: 12.0pt; line-height: 150%;"></span>
                </p>

                <p class="MsoNormal" style="line-height: 150%">
                    <span style="line-height: 150%;">�����ǳ����Ӷ�δ�����˸�����Ϣ�ı�����������<span>18</span>�������µ�δ�����ˣ���ʹ�þ�������ǰ��Ӧ����ȡ�����ҳ��򷨶��໤�˵�����ͬ�⡣�������ݹ�����ط��ɷ���Ĺ涨����δ�����˵ĸ�����Ϣ��<span></span></span>
                </p>

                <p class="MsoNormal" style="line-height: 150%">
                    <span style="font-size: 12.0pt; line-height: 150%;"></span>
                </p>

                <p class="MsoNormal" style="line-height: 150%"><b><span style="line-height: 150%;">�ˡ�֪ͨ���޶�<span></span></span></b></p>

                <p class="MsoNormal" style="line-height: 150%">
                    <span style="font-size: 12.0pt; line-height: 150%;"></span>
                </p>

                <p class="MsoNormal" style="line-height: 150%">
                    <span style="line-height: 150%;">Ϊ�����ṩ���õķ��񣬾�����ҵ�񽫲�ʱ�仯������˽����Ҳ����֮������������ͨ���ھ�����վ���ƶ����Ϸ������°汾��������������ݵĸ��£�Ҳ�������ʾ����Ա㼰ʱ�˽����µ���˽���ߡ���������ڱ���˽���߻���ʹ�þ�������ʱ�������ĸ�����Ϣ����˽������κ����⣬����ϵ�����ͷ�����������������������������</span>
                </p>
            </div>
            <div class="protocol-button">
                <button>ͬ�Ⲣ����</button>
            </div>
        </div>
    </div>
    <div id="form-footer" class="footer w">
        <div class="links">
            <a rel="nofollow" target="_blank" href="//www.jd.com/intro/about.aspx">��������</a>|
        <a rel="nofollow" target="_blank" href="//www.jd.com/contact/">��ϵ����</a>|
        <a rel="nofollow" target="_blank" href="//zhaopin.jd.com/">�˲���Ƹ</a>|
        <a rel="nofollow" target="_blank" href="//www.jd.com/contact/joinin.aspx">�̼���פ</a>|
        <a rel="nofollow" target="_blank" href="//www.jd.com/intro/service.aspx">������</a>|
        <a rel="nofollow" target="_blank" href="//app.jd.com/">�ֻ�����</a>|
        <a target="_blank" href="//club.jd.com/links.aspx">��������</a>|
        <a target="_blank" href="//media.jd.com">��������</a>|
        <a href="//club.jd.com/" target="_blank">��������</a>|
        <a href="//gongyi.jd.com" target="_blank">��������</a>|
        </div>
        <div class="copyright">
            Copyright&copy;2004-2016&nbsp;&nbsp;����JD.com&nbsp;��Ȩ����
        </div>
    </div>
    <script>
        var capslock = false;
        // �������ʾ
        $('.field').focusin(function () {
            var p = this.parentNode.nextElementSibling;
            var html = this.outerHTML;
            html = html.substring(html.indexOf('default'));
            html = html.substring(html.indexOf('\"') + 1);
            html = html.substring(0, html.length - 2);
            p.innerHTML += html;

            if (this.id == 'form-pwd' || this.id == 'form-equalTopwd') {
                if (capslock) this.nextElementSibling.nextElementSibling.style.display = 'block';
                else this.nextElementSibling.nextElementSibling.style.display = 'none';
            }
        });
        $('.field').focusout(function () {
            var p = this.parentNode.nextElementSibling;
            p.innerHTML = '';

            if (this.id == 'form-account') {
                // ����Ƿ��ѱ�ע��
            }
            else if (this.id == 'form-pwd' || this.id == 'form-equalTopwd') {
                this.nextElementSibling.nextElementSibling.style.display = 'none';
            }
        });

        $('#form-pwd,#form-equalTopwd').keyup(function (e) {
            var keyCode = e.keyCode || e.which;
            if (keyCode == 20) capslock = !capslock;
            var isShift = e.shiftKey;
            if (keyCode >= 65 && keyCode <= 90) {
                var c = text[text.length - 1];
                if (c >= 'a' && c <= 'z' && isShift) capslock = true;
                else if (c >= 'a' && c <= 'z' && !isShift) capslock = false;
                else if (c >= 'A' && c <= 'Z' && isShift) capslock = false;
                else if (c >= 'A' && c <= 'Z' && !isShift) capslock = true;
            }
            if (capslock) this.nextElementSibling.nextElementSibling.style.display = 'block';
            else this.nextElementSibling.nextElementSibling.style.display = 'none';
        });
    </script>
    <script>
        $('#imgAuthCode').click(function () {
            this.src = '/CheckCode.aspx?' + Date.parse(new Date());
            this.previousElementSibling.focus();
        });
    </script>
    <script>
        function closeDialog() {
            $('.ui-dialog,.ui-mask').css('display', 'none');
            document.documentElement.style.overflow = 'scroll';
        }
        $('.ui-dialog-close,.ui-mask').click(closeDialog);
        $('#protocol').click(function () {
            $('#dialog-title')[0].innerHTML = '�����û�ע��Э��';
            $('#dialog-content')[0].innerHTML = $('#protocoldiv')[0].innerHTML;
            $('.protocol-button button').click(closeDialog);
            $('.ui-dialog,.ui-mask').css('display', 'block');
            document.documentElement.style.overflow = 'hidden';
        });
        $('#privacyProtocolTrigger').click(function () {
            $('#dialog-title')[0].innerHTML = '��˽����';
            $('#dialog-content')[0].innerHTML = $('#privacyProtocol')[0].innerHTML;
            $('.protocol-button button').click(closeDialog);
            $('.ui-dialog,.ui-mask').css('display', 'block');
            document.documentElement.style.overflow = 'hidden';
        });
    </script>
</body>
</html>