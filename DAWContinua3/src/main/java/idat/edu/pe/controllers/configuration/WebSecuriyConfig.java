package idat.edu.pe.controllers.configuration;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.method.configuration.EnableGlobalMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.factory.PasswordEncoderFactories;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;

@Configuration
@EnableWebSecurity
@EnableGlobalMethodSecurity(prePostEnabled = true,securedEnabled = true)
public class WebSecuriyConfig extends WebSecurityConfigurerAdapter{

	@Override
	protected void configure(HttpSecurity http) throws Exception {
		http.authorizeRequests()
		.antMatchers("/css/**", "/imagenes/**", "/js/**","/principal", "/inicio", "/logeo", "/login")
		.permitAll()
		.antMatchers("/empleados/listarTodo").hasAnyRole("ADMIN","RECURSOS_HUMANOS")
		.antMatchers("/empleados/nuevo").hasAnyRole("ADMIN","RECURSOS_HUMANOS")
		.antMatchers("/estudiantes/listarTodo").hasAnyRole("ADMIN","RECURSOS_HUMANOS")
		.antMatchers("/estudiantes/nuevo").hasAnyRole("ADMIN","RECURSOS_HUMANOS")
		.antMatchers("/espcur/listarTodo").hasAnyRole("ADMIN","RECURSOS_HUMANOS")
		.antMatchers("/matriculas/listarTodo").hasAnyRole("ADMIN","ASISTENTE_VENTAS")
		.antMatchers("/matriculas/nuevo").hasAnyRole("ADMIN","ASISTENTE_VENTAS")
		.anyRequest().authenticated()
		.and().
		formLogin().loginPage("/login").permitAll()
		.and().formLogin().loginPage("/login").defaultSuccessUrl("/home", true).permitAll()
		.and().logout().permitAll();
	}
	
	@Autowired
	public void configureGlobal(AuthenticationManagerBuilder auth) throws Exception{
		PasswordEncoder encoder = PasswordEncoderFactories.createDelegatingPasswordEncoder();
		auth.inMemoryAuthentication()
		.withUser("admin").password(encoder.encode("admin")).roles("ADMIN").and()
		.withUser("mishell").password(encoder.encode("mishell")).roles("RECURSOS_HUMANOS").and()	
		.withUser("danixza").password(encoder.encode("danixza")).roles("ASISTENTE_VENTAS").and()
		.withUser("ricardo").password(encoder.encode("ricardo")).roles("CAJERO").and();
		
		
	}

}
