namespace StyleChecker

import Boo.Lang.Compiler
import Boo.Lang.Compiler.Pipeline.Definitions

class StyleCheckerStep(AbstractCompilerStep):
	
	override def Run():
		print("Hello from ${GetType()}!")
		

class StyleCheckerPipelineDefinition(BoocPipelineDefinition):
	
	override def Define(pipeline as CompilerPipeline):
		super(pipeline)
		pipeline.InsertAfter("parse", StyleCheckerStep())
