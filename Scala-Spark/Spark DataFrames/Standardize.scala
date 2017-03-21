package paul.dataframe
import org.apache.spark.sql.DataFrame

class StandardObserve(frame: DataFrame) {
  def header() = {
    frame.printSchema
  }
}
