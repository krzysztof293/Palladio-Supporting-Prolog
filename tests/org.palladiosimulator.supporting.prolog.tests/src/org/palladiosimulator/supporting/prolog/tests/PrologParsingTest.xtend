/*
 * generated by Xtext 2.19.0
 */
package org.palladiosimulator.supporting.prolog.tests

import com.google.inject.Inject
import org.eclipse.xtext.testing.InjectWith
import org.eclipse.xtext.testing.extensions.InjectionExtension
import org.eclipse.xtext.testing.util.ParseHelper
import org.junit.jupiter.api.Assertions
import org.junit.jupiter.api.Test
import org.junit.jupiter.api.^extension.ExtendWith
import org.palladiosimulator.supporting.prolog.model.prolog.Program

@ExtendWith(InjectionExtension)
@InjectWith(PrologInjectorProvider)
class PrologParsingTest {
	@Inject
	ParseHelper<Program> parseHelper
	
	@Test
	def void loadModel() {
		val result = parseHelper.parse('''
			A.
		''')
		Assertions.assertNotNull(result)
		val errors = result.eResource.errors
		Assertions.assertTrue(errors.isEmpty, '''Unexpected errors: «errors.join(", ")»''')
	}
}
