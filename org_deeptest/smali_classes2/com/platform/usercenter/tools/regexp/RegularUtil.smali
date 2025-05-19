.class public final Lcom/platform/usercenter/tools/regexp/RegularUtil;
.super Ljava/lang/Object;
.source "RegularUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method

.method public static isEmail(Ljava/lang/String;)Z
    .locals 3
    .param p0, "kekename"    # Ljava/lang/String;

    .line 36
    const/4 v0, 0x0

    .line 37
    .local v0, "result":Z
    const-string v1, "^[a-zA-Z0-9]{1}[a-zA-Z0-9\\+\\_\\-\\*\\~\\!\\#\\$\\\\%\\^\\&\\.]{0,39}\\@[a-zA-Z0-9][a-zA-Z0-9\\-]{0,39}(\\.[a-zA-Z0-9][a-zA-Z0-9\\-]{0,39})+$"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 41
    .local v1, "EMAIL_ADDRESS_PATTERN":Ljava/util/regex/Pattern;
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 42
    const/4 v2, 0x1

    return v2

    .line 44
    :cond_0
    return v0
.end method

.method public static isMobileNumber(Ljava/lang/String;)Z
    .locals 3
    .param p0, "kekename"    # Ljava/lang/String;

    .line 24
    const/4 v0, 0x0

    .line 25
    .local v0, "result":Z
    const-string v1, "^[1]{1}[0-9]{10}$"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 26
    .local v1, "MOBILEPHONE_PATTERN":Ljava/util/regex/Pattern;
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 27
    const/4 v2, 0x1

    return v2

    .line 29
    :cond_0
    return v0
.end method
