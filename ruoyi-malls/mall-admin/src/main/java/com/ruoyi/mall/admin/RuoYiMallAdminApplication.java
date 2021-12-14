package com.ruoyi.mall.admin;

import com.ruoyi.common.security.annotation.EnableCustomConfig;
import com.ruoyi.common.security.annotation.EnableRyFeignClients;
import com.ruoyi.common.swagger.annotation.EnableCustomSwagger2;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@EnableCustomConfig
@EnableCustomSwagger2
@EnableRyFeignClients
@SpringBootApplication
public class RuoYiMallAdminApplication {
    public static void main(String[] args) {
        SpringApplication.run(RuoYiMallAdminApplication.class, args);
        System.out.println("""
                "(♥◠‿◠)ﾉﾞ  RuoYi-mall-admin is Starting   ლ(´ڡ`ლ)ﾞ
                                " .-------.       ____     __
                                " |  _ _   \\\\      \\\\   \\\\   /  /
                                " | ( ' )  |       \\\\  _. /  '
                                " |(_ o _) /        _( )_ .'
                                " | (_,_).' __  ___(_ o _)'
                                " |  |\\\\ \\\\  |  ||   |(_,_)'
                                " |  | \\\\ `'   /|   `-'  /
                                " |  |  \\\\    /  \\\\      /
                                " ''-'   `'-'    `-..-'
                """);

    }
}
