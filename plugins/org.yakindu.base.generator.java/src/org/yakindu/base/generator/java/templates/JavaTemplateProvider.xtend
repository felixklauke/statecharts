package org.yakindu.base.generator.java.templates

import com.google.inject.Inject
import com.google.inject.Injector
import org.yakindu.base.generator.generator.ClassGen
import org.yakindu.base.generator.generator.ExpressionGen
import org.yakindu.base.generator.generator.InterfaceGen
import org.yakindu.base.generator.generator.MethodGen
import org.yakindu.base.generator.generator.ParameterGen
import org.yakindu.base.generator.generator.SourceFileGen
import org.yakindu.base.generator.templates.ITemplate
import org.yakindu.base.generator.templates.TemplateProvider

class JavaTemplateProvider extends TemplateProvider {
	@Inject protected Injector injector

	def dispatch doGet(ClassGen it) {
		val ret = new ClassTemplate()
		ret.inject
		return ret
	}
	
	def dispatch doGet(InterfaceGen it) {
		val ret = new InterfaceTemplate()
		ret.inject
		return ret
	}

	def dispatch doGet(MethodGen it) {
		val ret = new MethodTemplate()
		ret.inject
		return ret
	}
	
	def dispatch doGet(ParameterGen it) {
		val ret = new ParameterTemplate()
		ret.inject
		return ret
	}

	def dispatch doGet(SourceFileGen it) {
		val ret = new SourceFileTemplate()
		ret.inject
		return ret
	}
	
	def dispatch doGet(ExpressionGen it) {
		val ret = new ExpressionTemplate()
		ret.inject
		return ret
	}

	def inject(ITemplate it) {
		if (injector !== null) {
			injector.injectMembers(it)
		}
	}
}