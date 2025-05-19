.class public Lcom/platform/usercenter/basic/provider/SMSCodeProvider;
.super Ljava/lang/Object;
.source "SMSCodeProvider.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSMSCode(Landroid/telephony/SmsMessage;I)Ljava/lang/String;
    .locals 2
    .param p0, "smsMsg"    # Landroid/telephony/SmsMessage;
    .param p1, "length"    # I

    .line 10
    :try_start_0
    invoke-static {p0, p1}, Lcom/platform/usercenter/basic/provider/SMSCodeProvider;->paramSMS(Landroid/telephony/SmsMessage;I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 11
    :catch_0
    move-exception v0

    .line 12
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, ""

    return-object v1
.end method

.method public static getSMSCode(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p0, "smsContent"    # Ljava/lang/String;
    .param p1, "length"    # I

    .line 18
    :try_start_0
    invoke-static {p0, p1}, Lcom/platform/usercenter/basic/provider/SMSCodeProvider;->paramSMS(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 19
    :catch_0
    move-exception v0

    .line 20
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, ""

    return-object v1
.end method

.method private static paramSMS(Landroid/telephony/SmsMessage;I)Ljava/lang/String;
    .locals 1
    .param p0, "smsMsg"    # Landroid/telephony/SmsMessage;
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 42
    if-nez p0, :cond_0

    .line 43
    const-string v0, ""

    return-object v0

    .line 45
    :cond_0
    invoke-virtual {p0}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/platform/usercenter/basic/provider/SMSCodeProvider;->paramSMS(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static paramSMS(Ljava/lang/String;I)Ljava/lang/String;
    .locals 6
    .param p0, "smsContent"    # Ljava/lang/String;
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 25
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 26
    const-string v0, ""

    return-object v0

    .line 30
    :cond_0
    const-string v0, "[^0-9]"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 31
    .local v0, "split1":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 32
    .local v1, "smsCode":Ljava/lang/String;
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    .line 33
    .local v4, "str":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {v4}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ne p1, v5, :cond_1

    .line 34
    move-object v1, v4

    .line 35
    goto :goto_1

    .line 32
    .end local v4    # "str":Ljava/lang/String;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 38
    :cond_2
    :goto_1
    return-object v1
.end method
