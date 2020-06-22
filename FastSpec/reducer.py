import json,os
from benigin_parser import build_dictionary
def split(word): 
    return [char for char in word] 
delete = {"^r": 1519, "vector": 1520, "Permutati": 1521, "on": 1522, "AES": 1523, "4/ssse3": 1524, "Mike": 1525,"sysenter": 1509, "sha256": 1504, "sha512": 1505, "x86_64": 1462, "CRYPT": 1463, "H": 1453, "x`": 1454, "`": 1455, "oj": 1456, "}xx": 1457, "j": 1458, "keccak-1600": 1459,"y": 1408,"xstore-rng": 1388, "!": 1389, "'": 1390, "k": 1391, "v": 1392, "=": 1393, "@": 1394, "u": 1395, "^": 1396, "n": 1397, "b": 1398, "x": 1399, "l": 1400, "q": 1401, "{": 1402, "i": 1403,"h": 1349, "d": 1350,"CRYPTOGAMS": 1343, "A": 1344,"c": 1316, "+": 1317, "a": 1318,"o": 1308,"only)": 1305, "w": 1282, "g": 1283, "r": 1284, "z": 1285,"xcrypt-ctr": 1248,"xcrypt-ecb": 1247,"%?":0, "bad":0,"aesni-cbc+sha256": 1379, "64": 1380, "adcq": 1381, "ccccbit-sliced": 1382, "se3": 1383, "Emilia": 1384, "per": 1385, "Peter": 1386, "be": 1387, "Andy": 1388, "z~": 1389, "clts": 1390, "str": 1391, "ffreep": 1392, "crc32b": 1393, "6h": 1394, "'av": 1395, "g)": 1396, "5q": 1397, "J": 1398, "zn": 1399, "uk": 1400, "-": 1401, "t": 1402, "LU": 1403, "h1": 1404, "[k": 1405, "mb": 1406, "s!": 1407, "W": 1408, "V": 1409, "gq": 1410, "mlt": 1411, "p-": 1412, "!O": 1413, "[u": 1414, "@:": 1415, "rdp": 1416, "9": 1417, ")q": 1418, "wn": 1419, ">-": 1420, "U": 1421, "ie": 1422, "fqm": 1423, "|*": 1424, "iy": 1425, "}B": 1426, "jf|": 1427, "q)": 1428, "&ak": 1429, "xu": 1430, "tll": 1431, "y;": 1432, "ha": 1433, "ul": 1434, ";": 1435, "2i": 1436, "5w": 1437, "m": 1438, "hmq": 1439, "[": 1440, "/": 1441, "n]": 1442, "a?": 1443, "f~&]": 1444, "ir": 1445, "@l": 1446, "e": 1447, "T": 1448, "4m/": 1449, "@`\"": 1450, "*d": 1451, "7~5d": 1452, "bh": 1453, "z/b": 1454, "6d": 1455, "&": 1456, "iw": 1457, "r{": 1458,
            "  # -- End function":0,"leakByteNoinlineFunction": 0, "\"GCC:":0,"data16":0,"leakByteLocalFunction":0, "lasttime":0, "bufferSizeMask":0, }
immediate = ["7","5","3", "0"," 16","-60","-64","-49"," -49","-32","-4", "-1", "10","8", "-9",  "-44","-20", "1", " -32", " -24", 'nusers', '1075052544' ,'8192','136','30','52','46','576','400','1084227584'
            ,'12', ' -16', ' -40', '20', ' -48', ' -56', '41','536','36','44','48','512','56','40','72','-48','-12','16','32','24','28','stderr','child','exit_status']

def reduce_dataset(functions, word_dict=None):
    print('Reducing Dataset')   
    temp_func = []
    flag = 0
    for f,func in enumerate(functions):
        temp=[]
        for o, op in enumerate(func):
            if ',' in op and op !=',':
                op = op.split(',')
                op.insert(1,',')
                temp.extend(op)
                continue
            elif '..' in op or '[[' in op or 'uu' in op or '33' in op:
                continue
            elif '+' in op:
                op = op.split('+')
                temp.extend(op)
                continue
            elif '%' in op and not op[0]=='%':
                op = op.split('%')
                op[1] = '%'+op[1]
                temp.extend(op)
                continue

            temp.append(op)
        temp_func.append(temp)
        
    temp_f=[]
             
# Simplify Memory operations, Labels and Immediates
    for f,func in enumerate(temp_func):
        for o, op in enumerate(func):
            #if o > 0:
            #if '(' in op or '*' in op or 'fs:' in op:
            #    functions[f] = #[i][o] = 'MEM'
            if '.L' in op or 'mymemcmp' in op or 'is_x_safe' in op or 'call' in func[o-1] or 'getwork' in op: 
                func[o] = '<label>' #[i][o] = 'LABEL'
            elif '$' in op or '0x' in op or op in immediate:
                func[o] = '<imm>' #[i][o] = 'IMM'
            elif '..' in op or '[[' in op or 'uu' in op or '33' in op or '\\' in op or '\"' in op or op in delete: # or not op in word_dict:
                 func[o] = '<UNK>'
        temp_f.append(func)
    temp_func = []
    for f,func in enumerate(temp_f):
        temp=[]
        for o, op in enumerate(func):
            if '.' in op:
                continue
            temp.append(op)
        temp_func.append(temp)
                
                    
    return temp_func


if __name__=='__main__':
    filer = '/home/caner/gandalf/dataset/benign_test_dataset.txt'
    filew = '/home/caner/tmp/bert/benign_reduced_test_dataset.txt'
    vocab = '/home/caner/gandalf/dataset/benign_test_reduced_vocab.txt'
    print('benign data loading')
    with open(filer, 'r') as f:
        func_data = json.load(f)
    func_data = reduce_dataset(func_data)
    
    word_dict = build_dictionary(func_data)
    print(word_dict)
    with open(filew, 'w') as f:
        json.dump(func_data,f)