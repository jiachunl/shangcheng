package com.itdr.web;

import com.itdr.pojo.User;
import com.itdr.service.UserService;
import com.itdr.utils.MD5Utils;
import com.itdr.utils.TimeUtils;
import com.itdr.vo.UserVo;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

@Controller
@CrossOrigin("*")
public class UserWeb {
    @Autowired
    private UserService service;
    @RequestMapping("/all.do")
    public String all(ModelMap map){
        List<User> users = service.getUsers();
        map.addAttribute("users",users);
        return "all";
    }

    @RequestMapping("/login.do")
    public String login(){
        return "login";
    }

    @RequestMapping("/doLogin.do")
    /*ModelMap是把集合放到前台*/
    public String doLogin(@Param("username") String username, @Param("password") String password, ModelMap map, HttpServletResponse resp, HttpSession session){
        User user = service.getUserByUnameAndPwd(username, password);
        System.out.println(user);
        Cookie cookie = new Cookie("username",username);
        cookie.setMaxAge(1000000000);
        resp.addCookie(cookie);
        User users = (User) session.getAttribute("users");
        session.setAttribute("username", username);
        session.setAttribute("password", password);
        if (user.getUsername() == null || user.getPassword().equals("")){
            map.addAttribute("mess","用户名不能为空");
            return "login";
        }
        else if (user.getPassword() == null || user.getPassword().equals("")){
            map.addAttribute("mess","密码不能为空");
            return "login";
        }
        else{
            if(user.getRole() == 1){
                map.addAttribute("mess","权限不足");
                return "login";
            }else {
                return "index";
            }
        }

    }

    @RequestMapping("/register.do")
    public String register(){
        return "register";
    }

    @RequestMapping("/doRegister.do")
    public String register(User users,@RequestParam("username") String username,
                           @RequestParam("password") String password, ModelMap map) {
        password = MD5Utils.getMD5Code(users.getPassword());
        users.setPassword(password);
        service.addUsers(users);
        return "login";
        /*//1.参数非空判断
        if (users == null){
            map.addAttribute("mess","参数不能为空");
            return "register";
        }
        //2.用户名非空判断
        if(users.getUsername() == null || users.getUsername().equals("")){
            map.addAttribute("mess","用户名不能为空");
            return "register";
        }

        //3.邮箱非空判断
        if(users.getEmail() == null || users.getEmail().equals("")){
            map.addAttribute("mess","邮箱不能为空");
            return "register";
        }

        //4.联系方式非空判断
        if(users.getPhone() == null || users.getPhone().equals("")){
            map.addAttribute("mess","电话不能为空");
            return "register";
        }

        //5.密保问题非空判断
        if(users.getQuestion() == null || users.getQuestion().equals("")){
            map.addAttribute("mess","问题不能为空");
            return "register";
        }

        //6.密保问题答案非空判断
        if(users.getAnswer() == null || users.getAnswer().equals("")){
            map.addAttribute("mess","答案不能为空");
            return "register";
        }

        //7.密码非空判断
        if(users.getPassword() == null || users.getPassword().equals("")){
            map.addAttribute("mess","密码不能为空");
            return "register";
        }

        if (users.getUsername().equals(users.getUsername())) {
            map.addAttribute("mess", "用户名已存在！");
            return "register";
        }
        if (users.getUsername().equals(users.getEmail())){
            map.addAttribute("mess","邮箱已经存在");
            return "register";
        }
        else {
            service.addUsers(users);
            //对明文的密码加密
            password = MD5Utils.getMD5Code(users.getPassword());
            users.setPassword(password);
            map.addAttribute("mess", "注册成功！");
            return "login";
        }*/
    }

    @RequestMapping("table.do")
    public String table(ModelMap map){
//        List<UserVo> vos = new ArrayList<>();
        List<User> users = service.getUsers();
        /*for (User user:users){
            UserVo vo = new UserVo();
            vo.setId(user.getId());
            vo.setUsername(user.getUsername());
            vo.setPassword(user.getPassword());
            vo.setEmail(user.getEmail());
            vo.setPhone(user.getPhone());
            vo.setQuestion(user.getQuestion());
            vo.setAnswer(user.getAnswer());
            if (user.getRole() == 1){
                vo.setRole("普通用户");
            }else if (user.getRole() == 0){
                vo.setRole("管理员");
            }
            vo.setCreateTime(TimeUtils.dateToStr(user.getCreateTime()));
            vo.setUpdateTime(TimeUtils.dateToStr(user.getUpdateTime()));
        }*/
        map.addAttribute("users",users);
        return "table";
    }

    @RequestMapping("doTable.do")
    public String doTable(){
        return "redirect:index";
    }

    @RequestMapping("/yanzheng.do")
    @ResponseBody
    public String yanzheng(String username){
        return "1";
    }

    @RequestMapping("/a.do")
    public String add(){
        return "add";
    }

    @RequestMapping("/doAdd.do")
    public String doAdd(User users){
        service.addUsers(users);
        return "redirect:table.do";
    }
    @RequestMapping("/cha.do")
    public String cha(Integer id ,ModelMap map){
        User user = service.getUserById(id);
        List<User> users = service.getAllUser();
        map.addAttribute("users",users);
        map.addAttribute("user",user);
        return "update";
    }
    @RequestMapping("/doCha.do")
    public String doCha(User users){
        service.updateUser(users);
        return "redirect:table.do";
    }
    @RequestMapping("/del.do")
    public String del(Integer id){
        service.delUser(id);
        return "redirect:table.do";
    }

   @RequestMapping("/page.do")
    public String page(){
       return "report";
   }
   @RequestMapping("/log.do")
    public String log(){
       return "login";
   }
   @RequestMapping("/pass.do")
    public String pass(String password){
       return "pass";
   }
   @RequestMapping("/doPass.do")
    public String doPass(String username,String password,ModelMap map){
        if("".equals(username) || username == null){
            map.addAttribute("mes","用户名不能为空");
            return "pass";
        }
        if("".equals(password) || password == null){
            map.addAttribute("mes","密码不能为空");
            return "pass";
        }
        int a = service.updatePwdByUname(username,password);
        if(a>0){
            map.addAttribute("mes","密码修改成功");
            return "login";
        }else {
            map.addAttribute("mes","密码修改失败");
            return "pass";
        }
   }

}
