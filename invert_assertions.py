import re
import os
import sys

def invert_single_assertion(file_string,match,replacement,assertion):
  """Invert an assertion by replacing the old one, using the regex match"""

  repl_string = assertion + '(' + match.group(1) + replacement + match.group(3) + ')'
  result = file_string[:match.start()] + repl_string + file_string[match.end():]
  return re.sub('@expect verified', '@expect error', result)

def fail_suffix(i):
  """Filename suffix for the ith failing file"""
  if i == 0:
    return '_fail'
  else:
    return '_fail_' + str(i+1)

def fail_filename(orig_filename,i):
  """Filename for a failing regression"""
  parts = orig_filename.split('.')
  parts[-2] += fail_suffix(i)
  return '.'.join(parts)

def invert_assertions(filename,original="==",replacement="!=",assertion="assert"):
  """Inverts each assertion in a file, writing each one seperately to a new file."""

  orig_file = ""
  with open(filename, "r") as f:
    orig_file = f.read()
  
  regex = assertion + r'\((.*)(' + original + r')(.*)\)'
  matches = re.finditer(regex,orig_file)

  i = 0
  for match in matches:
    new_file_str = invert_single_assertion(orig_file,match,replacement,assertion)

    with open(fail_filename(filename,i), "w") as f:
      f.write(new_file_str)

    i += 1

def main():
  if len(sys.argv) < 2:
    print("Usage: \npython invert_assertions.py [folder_name]")
    sys.exit()

  reg_list = [
      'hello',
      'compute',
      'function',
      'forloop',
      'fib',
      'compound',
      'array',
      'pointer',
      'method',
      'dynamic',
      'inout',
      'overload',
      ]
  folder = sys.argv[1]
  os.chdir(folder)
  for src_file in os.listdir('.'): # current directory, which we just changed into
    if not os.path.isfile('./' + src_file):
      continue

    parts = src_file.split('.')
    reg_name = parts[-2]
    if reg_name in reg_list:

      orig = "=="
      repl = "!="
      sert = "assert"

      if parts[-1] in ['f', 'f90', 'f95', 'for', 'f03']: #fortran
        repl = "/="
      elif parts[-1] in ['rs']: #rust
        sert = r'assert!'

      if parts[-2] == 'hello':
        orig = "true"
        repl = "false"
      
      invert_assertions(src_file,orig,repl,sert)

if __name__ == '__main__':
  main()

