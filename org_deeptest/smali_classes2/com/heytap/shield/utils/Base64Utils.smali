.class public Lcom/heytap/shield/utils/Base64Utils;
.super Ljava/lang/Object;
.source "Base64Utils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static base642Byte(Ljava/lang/String;)[B
    .locals 2
    .param p0, "base64Key"    # Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 25
    invoke-static {}, Ljava/util/Base64;->getDecoder()Ljava/util/Base64$Decoder;

    move-result-object v0

    .line 26
    .local v0, "decoder":Ljava/util/Base64$Decoder;
    invoke-virtual {v0, p0}, Ljava/util/Base64$Decoder;->decode(Ljava/lang/String;)[B

    move-result-object v1

    return-object v1
.end method

.method public static byte2Base64([B)Ljava/lang/String;
    .locals 2
    .param p0, "bytes"    # [B
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 18
    invoke-static {}, Ljava/util/Base64;->getEncoder()Ljava/util/Base64$Encoder;

    move-result-object v0

    .line 19
    .local v0, "encoder":Ljava/util/Base64$Encoder;
    invoke-virtual {v0, p0}, Ljava/util/Base64$Encoder;->encodeToString([B)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
