.class public Lcom/platform/usercenter/network/header/HeaderConstant;
.super Ljava/lang/Object;
.source "HeaderConstant.java"


# static fields
.field public static final DEFAULT_CONTENT_CHARSET:Ljava/lang/String; = "ISO-8859-1"

.field public static FORMAT_UTF_8:Ljava/lang/String; = null

.field public static final HEAD_K_302_LOCATION:Ljava/lang/String; = "Location"

.field public static HEAD_K_ACCEPT:Ljava/lang/String; = null

.field public static HEAD_K_CONNECTION:Ljava/lang/String; = null

.field public static HEAD_K_CONTENT_ENCODING:Ljava/lang/String; = null

.field public static HEAD_K_CONTENT_LENGTH:Ljava/lang/String; = null

.field public static HEAD_K_CONTENT_TYPE:Ljava/lang/String; = null

.field public static final HEAD_K_RECEIVED_MILLIS:Ljava/lang/String; = "X-Android-Received-Millis"

.field public static final HEAD_K_SENT_MILLIS:Ljava/lang/String; = "X-Android-Sent-Millis"

.field public static final HEAD_V_APPLICATION_JSON:Ljava/lang/String; = "application/json"

.field public static HEAD_V_CONNECTION_CLOSE:Ljava/lang/String;

.field public static HEAD_V_CONNECTION_KEEP_ALIVE:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    const-string v0, "Connection"

    sput-object v0, Lcom/platform/usercenter/network/header/HeaderConstant;->HEAD_K_CONNECTION:Ljava/lang/String;

    .line 25
    const-string v0, "keep-alive"

    sput-object v0, Lcom/platform/usercenter/network/header/HeaderConstant;->HEAD_V_CONNECTION_KEEP_ALIVE:Ljava/lang/String;

    .line 30
    const-string v0, "close"

    sput-object v0, Lcom/platform/usercenter/network/header/HeaderConstant;->HEAD_V_CONNECTION_CLOSE:Ljava/lang/String;

    .line 36
    const-string v0, "Content-Encoding"

    sput-object v0, Lcom/platform/usercenter/network/header/HeaderConstant;->HEAD_K_CONTENT_ENCODING:Ljava/lang/String;

    .line 41
    const-string v0, "Content-Length"

    sput-object v0, Lcom/platform/usercenter/network/header/HeaderConstant;->HEAD_K_CONTENT_LENGTH:Ljava/lang/String;

    .line 46
    const-string v0, "Content-Type"

    sput-object v0, Lcom/platform/usercenter/network/header/HeaderConstant;->HEAD_K_CONTENT_TYPE:Ljava/lang/String;

    .line 51
    const-string v0, "Accept"

    sput-object v0, Lcom/platform/usercenter/network/header/HeaderConstant;->HEAD_K_ACCEPT:Ljava/lang/String;

    .line 56
    const-string v0, "UTF-8"

    sput-object v0, Lcom/platform/usercenter/network/header/HeaderConstant;->FORMAT_UTF_8:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkNameAndValue(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .line 111
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 112
    return v0

    .line 113
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 114
    return v0

    .line 116
    :cond_1
    const/4 v1, 0x0

    .line 120
    .local v1, "i":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .local v2, "length":I
    :goto_0
    const/16 v3, 0x7f

    if-ge v1, v2, :cond_4

    .line 121
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 122
    .local v4, "c":C
    const/16 v5, 0x20

    if-le v4, v5, :cond_3

    if-lt v4, v3, :cond_2

    goto :goto_1

    .line 120
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 123
    :cond_3
    :goto_1
    return v0

    .line 127
    .end local v4    # "c":C
    :cond_4
    if-nez p1, :cond_5

    .line 128
    return v0

    .line 130
    :cond_5
    const/4 v1, 0x0

    .line 132
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    :goto_2
    if-ge v1, v2, :cond_9

    .line 133
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 134
    .restart local v4    # "c":C
    const/16 v5, 0x1f

    if-gt v4, v5, :cond_6

    const/16 v5, 0x9

    if-ne v4, v5, :cond_7

    :cond_6
    if-lt v4, v3, :cond_8

    .line 135
    :cond_7
    return v0

    .line 132
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 139
    .end local v4    # "c":C
    :cond_9
    const/4 v0, 0x1

    return v0
.end method

.method public static parseCharset(Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 107
    .local p0, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "ISO-8859-1"

    invoke-static {p0, v0}, Lcom/platform/usercenter/network/header/HeaderConstant;->parseCharset(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static parseCharset(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "defaultCharset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 86
    .local p0, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v0, Lcom/platform/usercenter/network/header/HeaderConstant;->HEAD_K_CONTENT_TYPE:Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 87
    .local v0, "contentType":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 88
    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 89
    .local v1, "params":[Ljava/lang/String;
    const/4 v2, 0x1

    move v3, v2

    .local v3, "i":I
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_1

    .line 90
    aget-object v4, v1, v3

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 91
    .local v4, "pair":[Ljava/lang/String;
    array-length v5, v4

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    .line 92
    const/4 v5, 0x0

    aget-object v5, v4, v5

    const-string v6, "charset"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 93
    aget-object v2, v4, v2

    return-object v2

    .line 89
    .end local v4    # "pair":[Ljava/lang/String;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 99
    .end local v1    # "params":[Ljava/lang/String;
    .end local v3    # "i":I
    :cond_1
    return-object p1
.end method
