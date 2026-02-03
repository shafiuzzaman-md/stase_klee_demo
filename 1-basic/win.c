// win.c - MetaLogin Avatar Manager
// 1-Basic: Sample-3 Challenge
#include "metalogin.h"

static void repeat_char(char c, int n) {
    while (n-- > 0) putchar(c);
}

static char rot13c(char c) {
    if (c >= 'A' && c <= 'Z') return (char)('A' + ((c - 'A' + 13) % 26));
    if (c >= 'a' && c <= 'z') return (char)('a' + ((c - 'a' + 13) % 26));
    return c;
}

static void print_centered_line_rot13(const char *enc, int outer_width,
                                      const char *left_dec, const char *right_dec) {
    int inner_width = outer_width - 2;
    int ldec = (int)strlen(left_dec);
    int rdec = (int)strlen(right_dec);
    int content_width = inner_width - ldec - rdec;

    int len = (int)strlen(enc);
    if (len > content_width) len = content_width;

    int pad_left = (content_width - len) / 2;
    int pad_right = content_width - len - pad_left;

    putchar('|');
    fputs(left_dec, stdout);
    repeat_char(' ', pad_left);
    for (int i = 0; i < len; ++i) putchar(rot13c(enc[i]));
    repeat_char(' ', pad_right);
    fputs(right_dec, stdout);
    putchar('|');
    putchar('\n');
}

static void print_centered_blank(int outer_width, const char *left_dec, const char *right_dec) {
    int inner_width = outer_width - 2;
    int ldec = (int)strlen(left_dec);
    int rdec = (int)strlen(right_dec);
    int content_width = inner_width - ldec - rdec;

    putchar('|');
    fputs(left_dec, stdout);
    repeat_char(' ', content_width);
    fputs(right_dec, stdout);
    putchar('|');
    putchar('\n');
}

void print_card(void) {
    const int W = 66;
    const int inner = W - 2;

    const char *lines[] = {
        "GJRAGL-SVIR",
        "ZVYYVBA",
        "UBAT XBAT",
        "QBYYNEF"
    };

    putchar('+'); repeat_char('=', W - 2); putchar('+'); putchar('\n');
    putchar('|'); fputs("<>", stdout); repeat_char('-', inner - 4); fputs("<>", stdout); putchar('|'); putchar('\n');
    print_centered_blank(W, "||", "||");
    for (size_t i = 0; i < sizeof(lines)/sizeof(lines[0]); ++i) {
        print_centered_line_rot13(lines[i], W, "|| ", " ||");
    }
    print_centered_blank(W, "||", "||");
    putchar('|'); fputs("<>", stdout); repeat_char('-', inner - 4); fputs("<>", stdout); putchar('|'); putchar('\n');
    putchar('+'); repeat_char('=', W - 2); putchar('+'); putchar('\n');
}
