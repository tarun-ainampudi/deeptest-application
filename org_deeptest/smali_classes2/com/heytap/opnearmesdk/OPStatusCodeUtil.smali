.class Lcom/heytap/opnearmesdk/OPStatusCodeUtil;
.super Ljava/lang/Object;
.source "OPStatusCodeUtil.java"


# static fields
.field static final ERROR_CODE_ACCOUNT_ERROR:Ljava/lang/String; = "3013"

.field static final ERROR_CODE_ACCOUNT_LOGIN_FAIL:Ljava/lang/String; = "1002"

.field static final ERROR_CODE_LOGIN_STATUS_INVALID:Ljava/lang/String; = "3040"

.field static final ERROR_CODE_NO_ACCOUNT_LOGIN:Ljava/lang/String; = "1001"

.field static final ERROR_CODE_NO_NETWORT_CONNECT:Ljava/lang/String; = "2001"

.field static final ERROR_CODE_OTHER:Ljava/lang/String; = "1003"

.field static final SUCCESS_CODE_READ_CACHE:Ljava/lang/String; = "2000"

.field static final SUCCESS_CODE_REQ_NETWORK:Ljava/lang/String; = "1000"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static matchResultMsg(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "errCode"    # Ljava/lang/String;

    .line 19
    const-string v0, "1000"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20
    const-string v0, "\u83b7\u53d6\u7f51\u7edc\u6570\u636e\u6210\u529f"

    return-object v0

    .line 21
    :cond_0
    const-string v0, "2000"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 22
    const-string v0, "\u83b7\u53d6\u7f13\u5b58\u6570\u636e\u6210\u529f"

    return-object v0

    .line 23
    :cond_1
    const-string v0, "1001"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 24
    const-string v0, "\u8d26\u53f7\u672a\u767b\u5f55"

    return-object v0

    .line 25
    :cond_2
    const-string v0, "1002"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 26
    const-string v0, "\u8d26\u53f7\u767b\u5f55\u5931\u8d25"

    return-object v0

    .line 27
    :cond_3
    const-string v0, "1003"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 28
    const-string v0, "\u64cd\u4f5c\u5931\u8d25"

    return-object v0

    .line 29
    :cond_4
    const-string v0, "2001"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 30
    const-string v0, "\u7f51\u7edc\u5f02\u5e38"

    return-object v0

    .line 31
    :cond_5
    const-string v0, "3040"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 32
    const-string v0, "\u767b\u5f55\u72b6\u6001\u5df2\u5931\u6548"

    return-object v0

    .line 33
    :cond_6
    const-string v0, "3013"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 34
    const-string v0, "\u8d26\u6237\u5f02\u5e38"

    return-object v0

    .line 36
    :cond_7
    const-string v0, "\u64cd\u4f5c\u5931\u8d25"

    return-object v0
.end method
