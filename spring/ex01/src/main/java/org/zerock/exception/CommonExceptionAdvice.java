package org.zerock.exception;

import org.springframework.http.HttpStatus;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.servlet.NoHandlerFoundException;

import lombok.extern.log4j.Log4j;

// 자동 스캔 + 예외 처리( AOP) 
@ControllerAdvice
@Log4j
public class CommonExceptionAdvice {
   
   // 컨트롤러에서 발생하는 Exception 모든 예외를  처리하는 메서드
   @ExceptionHandler(Exception.class)
   public String except(Exception ex, Model model) {
      log.error("> Exception..... " + ex.getMessage());
      model.addAttribute("exception", ex);
      log.error(model);
      return "/error/error_page";
   }
   
   // p 159
   @ExceptionHandler(NoHandlerFoundException.class)
   @ResponseStatus( HttpStatus.NOT_FOUND )
   public String handle404(NoHandlerFoundException ex) {
       
      return "/error/custom404";
   }

}