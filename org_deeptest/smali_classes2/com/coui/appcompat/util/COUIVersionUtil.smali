.class public Lcom/coui/appcompat/util/COUIVersionUtil;
.super Ljava/lang/Object;
.source "COUIVersionUtil.java"


# static fields
.field public static final COUI_1_0:I = 0x1

.field public static final COUI_1_2:I = 0x2

.field public static final COUI_1_4:I = 0x3

.field public static final COUI_2_0:I = 0x4

.field public static final COUI_2_1:I = 0x5

.field public static final COUI_3_0:I = 0x6

.field public static final COUI_3_1:I = 0x7

.field public static final COUI_3_2:I = 0x8

.field public static final COUI_5_0:I = 0x9

.field public static final COUI_5_1:I = 0xa

.field public static final COUI_5_2:I = 0xb

.field public static final COUI_6_0:I = 0xc

.field public static final COUI_6_1:I = 0xd

.field public static final COUI_6_2:I = 0xe

.field public static final COUI_6_7:I = 0xf

.field public static final COUI_7_0:I = 0x10

.field public static final COUI_7_1:I = 0x11

.field public static final COUI_7_2:I = 0x12

.field public static final COUI_8_0:I = 0x13

.field public static final COUI_8_1:I = 0x14

.field public static final COUI_8_2:I = 0x15

.field private static final TAG:Ljava/lang/String; = "COUIVersionUtil"

.field public static final UNKNOWN:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDeviceName(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .line 148
    const-string v0, ""

    .line 150
    .local v0, "deviceName":Ljava/lang/String;
    :try_start_0
    const-string v1, "com.oplus.os.OplusBuild"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 151
    .local v1, "romClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v1, :cond_0

    .line 152
    return-object v0

    .line 154
    :cond_0
    const-string v2, "getDeviceName"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 155
    .local v2, "getDeviceName":Ljava/lang/reflect/Method;
    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v6

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 156
    .local v3, "o":Ljava/lang/Object;
    move-object v4, v3

    check-cast v4, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v4

    .line 159
    .end local v1    # "romClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "getDeviceName":Ljava/lang/reflect/Method;
    .end local v3    # "o":Ljava/lang/Object;
    goto :goto_0

    .line 157
    :catch_0
    move-exception v1

    .line 158
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "COUIVersionUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDeviceName failed. error = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v0
.end method

.method public static getOSVersionCode()I
    .locals 5

    .line 125
    const/4 v0, 0x0

    move v1, v0

    .line 127
    .local v1, "curRomVersion":I
    :try_start_0
    const-string v2, "com.oplus.os.OplusBuild"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 128
    .local v2, "romClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v2, :cond_0

    .line 129
    return v1

    .line 131
    :cond_0
    const-string v3, "getOplusOSVERSION"

    new-array v4, v0, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 132
    .local v3, "getCOUIVERSION":Ljava/lang/reflect/Method;
    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v3, v2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 133
    .local v0, "o":Ljava/lang/Object;
    move-object v4, v0

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v4

    .line 137
    .end local v0    # "o":Ljava/lang/Object;
    .end local v2    # "romClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "getCOUIVERSION":Ljava/lang/reflect/Method;
    goto :goto_0

    .line 135
    :catch_0
    move-exception v0

    .line 136
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "COUIVersionUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getOSVersionCode failed. error = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return v1
.end method
