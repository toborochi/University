static void _combiCR(char str[], int pos, int n, int open, int close) {
        if (close == n) {
            for (int i = 0; i < str.length; i++) {
                System.out.print(str[i]);
            }
            System.out.println();
            return;
        } else {
            if (open > close) {
                str[pos] = '}';
                _combiCR(str, pos + 1, n, open, close + 1);
            }
            if (open < n) {
                str[pos] = '{';
                _combiCR(str, pos + 1, n, open + 1, close);
            }
        }
    }

    static void printParenthesis(char str[], int n) {
        if (n > 0) {
            _combiCR(str, 0, n, 0, 0);
        }
        return;
    }