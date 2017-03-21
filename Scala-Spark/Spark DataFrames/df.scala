import org.apache.spark.sql.SparkSession

val spark = SparkSession.builder().getOrCreate()

val df = spark.read.option("header","true").option("inferSchema","true").csv("CitiGroup2006_2008")

def iterate(n: Int, f: Int => Int, x: Int) =
  if (n == 0) x else iterate(n - 1, f, f(x))
def square(x: Int) = x * x

iterate(1, square, 3)
