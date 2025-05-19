.class public final Lcom/platform/usercenter/tools/datastructure/PrototypeUtil;
.super Ljava/lang/Object;
.source "PrototypeUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method

.method public static getBoolean(Ljava/lang/String;)Z
    .locals 1
    .param p0, "value"    # Ljava/lang/String;

    .line 83
    invoke-static {p0}, Lcom/platform/usercenter/tools/datastructure/PrototypeUtil;->getInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 84
    const/4 v0, 0x0

    return v0

    .line 86
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public static getDouble(Ljava/lang/String;)D
    .locals 4
    .param p0, "value"    # Ljava/lang/String;

    .line 69
    const-wide/16 v0, 0x0

    if-nez p0, :cond_0

    .line 70
    return-wide v0

    .line 73
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v2

    .line 74
    :catch_0
    move-exception v2

    .line 75
    .local v2, "e":Ljava/lang/NumberFormatException;
    return-wide v0
.end method

.method public static getFloat(Ljava/lang/String;)F
    .locals 2
    .param p0, "value"    # Ljava/lang/String;

    .line 55
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 56
    return v0

    .line 59
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 60
    :catch_0
    move-exception v1

    .line 61
    .local v1, "e":Ljava/lang/NumberFormatException;
    return v0
.end method

.method public static getInt(ILjava/lang/String;)I
    .locals 1
    .param p0, "radix"    # I
    .param p1, "value"    # Ljava/lang/String;

    .line 41
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/platform/usercenter/tools/datastructure/PrototypeUtil;->getInt(ILjava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getInt(ILjava/lang/String;I)I
    .locals 2
    .param p0, "radix"    # I
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "faultValue"    # I

    .line 22
    if-nez p1, :cond_0

    .line 23
    return p2

    .line 31
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    long-to-int v0, v0

    return v0

    .line 32
    :catch_0
    move-exception v0

    .line 33
    .local v0, "e":Ljava/lang/NumberFormatException;
    return p2
.end method

.method public static getInt(Ljava/lang/String;)I
    .locals 1
    .param p0, "value"    # Ljava/lang/String;

    .line 100
    const/16 v0, 0xa

    invoke-static {v0, p0}, Lcom/platform/usercenter/tools/datastructure/PrototypeUtil;->getInt(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getInt(Ljava/lang/String;I)I
    .locals 1
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "faultValue"    # I

    .line 48
    const/16 v0, 0xa

    invoke-static {v0, p0, p1}, Lcom/platform/usercenter/tools/datastructure/PrototypeUtil;->getInt(ILjava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getLong(Ljava/lang/String;)J
    .locals 4
    .param p0, "value"    # Ljava/lang/String;

    .line 107
    const-wide/16 v0, 0x0

    if-nez p0, :cond_0

    .line 108
    return-wide v0

    .line 111
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v2

    .line 112
    :catch_0
    move-exception v2

    .line 113
    .local v2, "e":Ljava/lang/NumberFormatException;
    return-wide v0
.end method

.method public static value(F)F
    .locals 2
    .param p0, "value"    # F

    .line 136
    const/4 v0, 0x0

    cmpg-float v1, p0, v0

    if-gtz v1, :cond_0

    goto :goto_0

    :cond_0
    move v0, p0

    :goto_0
    return v0
.end method

.method public static value(Z)I
    .locals 0
    .param p0, "value"    # Z

    .line 122
    return p0
.end method

.method public static value(J)J
    .locals 3
    .param p0, "value"    # J

    .line 129
    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-gtz v2, :cond_0

    goto :goto_0

    :cond_0
    move-wide v0, p0

    :goto_0
    return-wide v0
.end method
