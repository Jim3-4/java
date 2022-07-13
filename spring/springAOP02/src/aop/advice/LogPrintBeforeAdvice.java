package aop.advice;

import java.lang.reflect.Method;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.aop.MethodBeforeAdvice;

public class LogPrintBeforeAdvice implements MethodBeforeAdvice{

	@Override
	public void before(Method method, //add()
									Object[] args, //그 메소드 호출할때 매개변수들 
									Object target //핵심 기능이 구현된 실제객체 (calc)
									) throws Throwable {
		
		String methodName=method.getName();
		Log log=LogFactory.getLog(this.getClass());
		//호출되는 지 확인만 해보는 예제 
		log.info(">>>"+methodName+"() logPrintBeforeAdvice 호출됨 ");
	}

}
