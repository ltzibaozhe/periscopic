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
	/**
	 * Copyright (c) 2011 Periscopic, Inc | http://periscopic.com
	 *
	 * Relased under Eclipse Public License:
	 * http://opensource.org/licenses/eclipse-1.0.php
	 *
	 * ----------------------------------------------------
	 *
	 * Example usage of com.periscopic.air.CommandLineProcess;
	 *
	 * @author brett johnson
	 * @see http://now.periscopic.com/2011/01/adobe-air-and-the-command-line/
	 */
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
			//Output hello
			//Process exited with  0
		}

		private function handleExit(e:NativeProcessExitEvent):void {
			//handle completion
		}
	}
}