package
{
	import com.periscopic.air.CommandLineProcess;
	import flash.display.Sprite;
	import flash.events.NativeProcessExitEvent;

	/**
	 * Requires:
	 * com.periscopic.air.CommandLineProcess;
	 * com.periscopic.utils.Retainer;
	 **/
	[SWF(width='600', height='600', backgroundColor='#FFFFFF', frameRate='30')]
	public class CommandLine extends Sprite
	{
		public function CommandLine() {
			echoString();
		}

		private function echoString():void {
			var command:CommandLineProcess = new CommandLineProcess();
			command.tracing();
			command.addEventListener(NativeProcessExitEvent.EXIT, handleExit, false, 0, true);
			command.run("echo hello");
		}

		private function handleExit(e:NativeProcessExitEvent):void {
			//handle completion
		}
	}
}