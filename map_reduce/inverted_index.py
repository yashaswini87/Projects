import MapReduce
import sys
mr = MapReduce.MapReduce()

def mapper(record):
    # key: document identifier
    # value: document contents
    key = record[0]
    value = record[1]
    words = value.split()
    for w in words:
      mr.emit_intermediate(w, key)
	
def reducer(key, list_of_values):
    # key: word
    # value: list of occurrence counts
    #total = 0
    #for v in list_of_values:
    #  total += v
    s=list(set(list_of_values))
    
    #my_tuple.append([key] + [s])

    mr.emit((key, s))
if __name__ == '__main_	_':
  inputdata = open(sys.argv[1])
  mr.execute(inputdata, mapper, reducer)
