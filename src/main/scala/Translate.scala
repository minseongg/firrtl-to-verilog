import chisel3._
import chisel3.stage.ChiselStage
import chisel3.util._
import firrtl._

object FirrtlToVerilog extends App {
    def getFileName: String = {
        if (args.length == 0) {
            println("Usage: sbt \"runMain FirrtlToVerilog <filename>\"")
        }

        val fileName = args(0)
        fileName
    }

    def getFileContents(fileName: String): String = {
        import scala.io.Source

        val fileContents = Source.fromFile(fileName).getLines().mkString("\n")
        fileContents
    }

    def getVerilogFromFIRRTL(fileName: String, fileContents: String): String = {
        val outputBuffer = new java.io.CharArrayWriter
        val parsedFIRRTL = Parser.parse(fileContents.split("\n").iterator, Parser.GenInfo(fileName))

        (new VerilogCompiler()).compile(
            CircuitState(
                parsedFIRRTL,
                ChirrtlForm,
                Seq(
                    CustomDefaultMemoryEmission(MemoryNoInit),
                    CustomDefaultRegisterEmission(useInitAsPreset = true, disableRandomization = true)
                )
            ),
            outputBuffer,
            Seq.empty
        )

        val outputString = outputBuffer.toString
        outputString
    }

    val fileName = getFileName
    val fileContents = getFileContents(fileName)

    val verilog = getVerilogFromFIRRTL(fileName, fileContents)
    println(verilog)
}
