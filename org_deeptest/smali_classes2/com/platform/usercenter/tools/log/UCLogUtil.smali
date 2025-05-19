.class public Lcom/platform/usercenter/tools/log/UCLogUtil;
.super Ljava/lang/Object;
.source "UCLogUtil.java"


# static fields
.field private static ISDEVMODE:Z

.field private static final LOGGABLE:Z

.field private static TAG:Ljava/lang/String;

.field private static mLogButton:Z

.field private static sLogImpl:Lcom/platform/usercenter/tools/log/ILog;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 20
    const-string v0, "UserCenter"

    sput-object v0, Lcom/platform/usercenter/tools/log/UCLogUtil;->TAG:Ljava/lang/String;

    .line 23
    sget-object v0, Lcom/platform/usercenter/tools/log/UCLogUtil;->TAG:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/platform/usercenter/tools/log/UCLogUtil;->LOGGABLE:Z

    .line 26
    const/4 v0, 0x1

    sput-boolean v0, Lcom/platform/usercenter/tools/log/UCLogUtil;->mLogButton:Z

    .line 27
    const/4 v1, 0x0

    sput-object v1, Lcom/platform/usercenter/tools/log/UCLogUtil;->sLogImpl:Lcom/platform/usercenter/tools/log/ILog;

    .line 30
    const-string v1, "persist.sys.assert.panic"

    const-string v2, "false"

    invoke-static {v1, v2}, Lcom/platform/usercenter/tools/os/SystemPropertyUtils;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 31
    .local v1, "qeOff":Ljava/lang/String;
    const-string v2, "persist.sys.assert.enable"

    const-string v3, "false"

    invoke-static {v2, v3}, Lcom/platform/usercenter/tools/os/SystemPropertyUtils;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 32
    .local v2, "qeOffMtk":Ljava/lang/String;
    const-string v3, "true"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "true"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 33
    const/4 v0, 0x0

    sput-boolean v0, Lcom/platform/usercenter/tools/log/UCLogUtil;->ISDEVMODE:Z

    goto :goto_0

    .line 35
    :cond_0
    sput-boolean v0, Lcom/platform/usercenter/tools/log/UCLogUtil;->ISDEVMODE:Z

    .line 37
    .end local v1    # "qeOff":Ljava/lang/String;
    .end local v2    # "qeOffMtk":Ljava/lang/String;
    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 2
    .param p0, "info"    # Ljava/lang/String;

    .line 126
    sget-object v0, Lcom/platform/usercenter/tools/log/UCLogUtil;->sLogImpl:Lcom/platform/usercenter/tools/log/ILog;

    if-eqz v0, :cond_0

    .line 127
    sget-object v0, Lcom/platform/usercenter/tools/log/UCLogUtil;->sLogImpl:Lcom/platform/usercenter/tools/log/ILog;

    sget-object v1, Lcom/platform/usercenter/tools/log/UCLogUtil;->TAG:Ljava/lang/String;

    invoke-interface {v0, v1, p0}, Lcom/platform/usercenter/tools/log/ILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 128
    :cond_0
    invoke-static {}, Lcom/platform/usercenter/tools/log/UCLogUtil;->getDecideResult()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 129
    sget-object v0, Lcom/platform/usercenter/tools/log/UCLogUtil;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    :cond_1
    :goto_0
    return-void
.end method

.method public static d(Ljava/lang/String;I)V
    .locals 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "info"    # I

    .line 110
    sget-object v0, Lcom/platform/usercenter/tools/log/UCLogUtil;->sLogImpl:Lcom/platform/usercenter/tools/log/ILog;

    if-eqz v0, :cond_0

    .line 111
    sget-object v0, Lcom/platform/usercenter/tools/log/UCLogUtil;->sLogImpl:Lcom/platform/usercenter/tools/log/ILog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/platform/usercenter/tools/log/UCLogUtil;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/platform/usercenter/tools/log/ILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 112
    :cond_0
    invoke-static {}, Lcom/platform/usercenter/tools/log/UCLogUtil;->getDecideResult()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/platform/usercenter/tools/log/UCLogUtil;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :cond_1
    :goto_0
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "info"    # Ljava/lang/String;

    .line 118
    sget-object v0, Lcom/platform/usercenter/tools/log/UCLogUtil;->sLogImpl:Lcom/platform/usercenter/tools/log/ILog;

    if-eqz v0, :cond_0

    .line 119
    sget-object v0, Lcom/platform/usercenter/tools/log/UCLogUtil;->sLogImpl:Lcom/platform/usercenter/tools/log/ILog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/platform/usercenter/tools/log/UCLogUtil;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/platform/usercenter/tools/log/ILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 120
    :cond_0
    invoke-static {}, Lcom/platform/usercenter/tools/log/UCLogUtil;->getDecideResult()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/platform/usercenter/tools/log/UCLogUtil;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    :cond_1
    :goto_0
    return-void
.end method

.method public static dAll(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 232
    sget-object v0, Lcom/platform/usercenter/tools/log/UCLogUtil;->sLogImpl:Lcom/platform/usercenter/tools/log/ILog;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 233
    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    .line 234
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 236
    :cond_0
    const/16 v0, 0xc00

    .line 237
    .local v0, "segmentSize":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    int-to-long v2, v2

    .line 238
    .local v2, "length":J
    int-to-long v4, v0

    cmp-long v4, v2, v4

    if-gtz v4, :cond_1

    .line 239
    sget-object v1, Lcom/platform/usercenter/tools/log/UCLogUtil;->sLogImpl:Lcom/platform/usercenter/tools/log/ILog;

    invoke-interface {v1, p0, p1}, Lcom/platform/usercenter/tools/log/ILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 241
    :cond_1
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v0, :cond_2

    .line 242
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 243
    .local v4, "logContent":Ljava/lang/String;
    const-string v5, ""

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 244
    sget-object v5, Lcom/platform/usercenter/tools/log/UCLogUtil;->sLogImpl:Lcom/platform/usercenter/tools/log/ILog;

    invoke-interface {v5, p0, v4}, Lcom/platform/usercenter/tools/log/ILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    .end local v4    # "logContent":Ljava/lang/String;
    goto :goto_0

    .line 246
    :cond_2
    sget-object v1, Lcom/platform/usercenter/tools/log/UCLogUtil;->sLogImpl:Lcom/platform/usercenter/tools/log/ILog;

    invoke-interface {v1, p0, p1}, Lcom/platform/usercenter/tools/log/ILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    .end local v0    # "segmentSize":I
    .end local v2    # "length":J
    :goto_1
    goto :goto_5

    .line 235
    :cond_3
    :goto_2
    return-void

    .line 248
    :cond_4
    invoke-static {}, Lcom/platform/usercenter/tools/log/UCLogUtil;->getDecideResult()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 249
    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_8

    if-eqz p1, :cond_8

    .line 250
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_5

    goto :goto_4

    .line 252
    :cond_5
    const/16 v0, 0xc00

    .line 253
    .restart local v0    # "segmentSize":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    int-to-long v2, v2

    .line 254
    .restart local v2    # "length":J
    int-to-long v4, v0

    cmp-long v4, v2, v4

    if-gtz v4, :cond_6

    .line 255
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 257
    :cond_6
    :goto_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v0, :cond_7

    .line 258
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 259
    .restart local v4    # "logContent":Ljava/lang/String;
    const-string v5, ""

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 260
    invoke-static {p0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    .end local v4    # "logContent":Ljava/lang/String;
    goto :goto_3

    .line 262
    :cond_7
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 251
    .end local v0    # "segmentSize":I
    .end local v2    # "length":J
    :cond_8
    :goto_4
    return-void

    .line 266
    :cond_9
    :goto_5
    return-void
.end method

.method public static detailE(Ljava/lang/String;)V
    .locals 4
    .param p0, "str"    # Ljava/lang/String;

    .line 197
    sget-object v0, Lcom/platform/usercenter/tools/log/UCLogUtil;->sLogImpl:Lcom/platform/usercenter/tools/log/ILog;

    if-eqz v0, :cond_0

    .line 198
    invoke-static {p0}, Lcom/platform/usercenter/tools/log/UCLogUtil;->getDetailString(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 199
    .local v0, "sb":Ljava/lang/StringBuilder;
    sget-object v1, Lcom/platform/usercenter/tools/log/UCLogUtil;->sLogImpl:Lcom/platform/usercenter/tools/log/ILog;

    sget-object v2, Lcom/platform/usercenter/tools/log/UCLogUtil;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/platform/usercenter/tools/log/ILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/platform/usercenter/tools/log/UCLogUtil;->getDecideResult()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 201
    invoke-static {p0}, Lcom/platform/usercenter/tools/log/UCLogUtil;->getDetailString(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 202
    .restart local v0    # "sb":Ljava/lang/StringBuilder;
    sget-object v1, Lcom/platform/usercenter/tools/log/UCLogUtil;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    :cond_1
    :goto_0
    return-void
.end method

.method public static detailI(Ljava/lang/String;)V
    .locals 8
    .param p0, "info"    # Ljava/lang/String;

    .line 177
    sget-object v0, Lcom/platform/usercenter/tools/log/UCLogUtil;->sLogImpl:Lcom/platform/usercenter/tools/log/ILog;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 178
    const/16 v0, 0x3e8

    .line 179
    .local v0, "maxLogSize":I
    nop

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    div-int/2addr v2, v0

    if-gt v1, v2, :cond_1

    .line 180
    mul-int v2, v1, v0

    .line 181
    .local v2, "start":I
    add-int/lit8 v3, v1, 0x1

    mul-int/2addr v3, v0

    .line 182
    .local v3, "end":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-le v3, v4, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    goto :goto_1

    :cond_0
    move v4, v3

    :goto_1
    move v3, v4

    .line 183
    sget-object v4, Lcom/platform/usercenter/tools/log/UCLogUtil;->sLogImpl:Lcom/platform/usercenter/tools/log/ILog;

    sget-object v5, Lcom/platform/usercenter/tools/log/UCLogUtil;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "info:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/platform/usercenter/tools/log/ILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    .end local v2    # "start":I
    .end local v3    # "end":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 185
    .end local v0    # "maxLogSize":I
    .end local v1    # "i":I
    :cond_1
    goto :goto_4

    :cond_2
    invoke-static {}, Lcom/platform/usercenter/tools/log/UCLogUtil;->getDecideResult()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 186
    const/16 v0, 0x3e8

    .line 187
    .restart local v0    # "maxLogSize":I
    nop

    .restart local v1    # "i":I
    :goto_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    div-int/2addr v2, v0

    if-gt v1, v2, :cond_4

    .line 188
    mul-int v2, v1, v0

    .line 189
    .restart local v2    # "start":I
    add-int/lit8 v3, v1, 0x1

    mul-int/2addr v3, v0

    .line 190
    .restart local v3    # "end":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-le v3, v4, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    goto :goto_3

    :cond_3
    move v4, v3

    :goto_3
    move v3, v4

    .line 191
    sget-object v4, Lcom/platform/usercenter/tools/log/UCLogUtil;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "info:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    .end local v2    # "start":I
    .end local v3    # "end":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 194
    .end local v0    # "maxLogSize":I
    .end local v1    # "i":I
    :cond_4
    :goto_4
    return-void
.end method

.method public static devMode()Z
    .locals 1

    .line 269
    sget-boolean v0, Lcom/platform/usercenter/tools/log/UCLogUtil;->ISDEVMODE:Z

    return v0
.end method

.method public static e(Ljava/lang/Exception;)V
    .locals 4
    .param p0, "e"    # Ljava/lang/Exception;

    .line 101
    sget-object v0, Lcom/platform/usercenter/tools/log/UCLogUtil;->sLogImpl:Lcom/platform/usercenter/tools/log/ILog;

    if-eqz v0, :cond_0

    .line 102
    sget-object v0, Lcom/platform/usercenter/tools/log/UCLogUtil;->sLogImpl:Lcom/platform/usercenter/tools/log/ILog;

    sget-object v1, Lcom/platform/usercenter/tools/log/UCLogUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error occurred with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/platform/usercenter/tools/log/ILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 103
    :cond_0
    invoke-static {}, Lcom/platform/usercenter/tools/log/UCLogUtil;->getDecideResult()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 104
    sget-object v0, Lcom/platform/usercenter/tools/log/UCLogUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error occurred with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 107
    :cond_1
    :goto_0
    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .locals 2
    .param p0, "info"    # Ljava/lang/String;

    .line 84
    sget-object v0, Lcom/platform/usercenter/tools/log/UCLogUtil;->sLogImpl:Lcom/platform/usercenter/tools/log/ILog;

    if-eqz v0, :cond_0

    .line 85
    sget-object v0, Lcom/platform/usercenter/tools/log/UCLogUtil;->sLogImpl:Lcom/platform/usercenter/tools/log/ILog;

    sget-object v1, Lcom/platform/usercenter/tools/log/UCLogUtil;->TAG:Ljava/lang/String;

    invoke-interface {v0, v1, p0}, Lcom/platform/usercenter/tools/log/ILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 86
    :cond_0
    invoke-static {}, Lcom/platform/usercenter/tools/log/UCLogUtil;->getDecideResult()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 87
    sget-object v0, Lcom/platform/usercenter/tools/log/UCLogUtil;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :cond_1
    :goto_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 4
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "e"    # Ljava/lang/Exception;

    .line 92
    sget-object v0, Lcom/platform/usercenter/tools/log/UCLogUtil;->sLogImpl:Lcom/platform/usercenter/tools/log/ILog;

    if-eqz v0, :cond_0

    .line 93
    sget-object v0, Lcom/platform/usercenter/tools/log/UCLogUtil;->sLogImpl:Lcom/platform/usercenter/tools/log/ILog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/platform/usercenter/tools/log/UCLogUtil;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error occurred with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/platform/usercenter/tools/log/ILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 94
    :cond_0
    invoke-static {}, Lcom/platform/usercenter/tools/log/UCLogUtil;->getDecideResult()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/platform/usercenter/tools/log/UCLogUtil;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error occurred with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 98
    :cond_1
    :goto_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "info"    # Ljava/lang/String;

    .line 76
    sget-object v0, Lcom/platform/usercenter/tools/log/UCLogUtil;->sLogImpl:Lcom/platform/usercenter/tools/log/ILog;

    if-eqz v0, :cond_0

    .line 77
    sget-object v0, Lcom/platform/usercenter/tools/log/UCLogUtil;->sLogImpl:Lcom/platform/usercenter/tools/log/ILog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/platform/usercenter/tools/log/UCLogUtil;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/platform/usercenter/tools/log/ILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 78
    :cond_0
    invoke-static {}, Lcom/platform/usercenter/tools/log/UCLogUtil;->getDecideResult()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/platform/usercenter/tools/log/UCLogUtil;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    :cond_1
    :goto_0
    return-void
.end method

.method public static getDecideResult()Z
    .locals 1

    .line 56
    sget-boolean v0, Lcom/platform/usercenter/tools/log/UCLogUtil;->mLogButton:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/platform/usercenter/tools/env/EnvConstantManager;->getInstance()Lcom/platform/usercenter/tools/env/EnvConstantManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/platform/usercenter/tools/env/EnvConstantManager;->DEBUG()Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/platform/usercenter/tools/log/UCLogUtil;->LOGGABLE:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/platform/usercenter/tools/log/UCLogUtil;->ISDEVMODE:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static getDetailString(Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 4
    .param p0, "str"    # Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 209
    .local v0, "sb":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 210
    .local v1, "stackTrace":[Ljava/lang/StackTraceElement;
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " --> "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ( "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, v1, v2

    .line 211
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v2

    .line 210
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " )"

    .line 211
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    return-object v0
.end method

.method public static i(Ljava/lang/String;)V
    .locals 2
    .param p0, "info"    # Ljava/lang/String;

    .line 143
    sget-object v0, Lcom/platform/usercenter/tools/log/UCLogUtil;->sLogImpl:Lcom/platform/usercenter/tools/log/ILog;

    if-eqz v0, :cond_0

    .line 144
    sget-object v0, Lcom/platform/usercenter/tools/log/UCLogUtil;->sLogImpl:Lcom/platform/usercenter/tools/log/ILog;

    sget-object v1, Lcom/platform/usercenter/tools/log/UCLogUtil;->TAG:Ljava/lang/String;

    invoke-interface {v0, v1, p0}, Lcom/platform/usercenter/tools/log/ILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 145
    :cond_0
    invoke-static {}, Lcom/platform/usercenter/tools/log/UCLogUtil;->getDecideResult()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 146
    sget-object v0, Lcom/platform/usercenter/tools/log/UCLogUtil;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :cond_1
    :goto_0
    return-void
.end method

.method public static i(Ljava/lang/String;D)V
    .locals 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "info"    # D

    .line 152
    sget-object v0, Lcom/platform/usercenter/tools/log/UCLogUtil;->sLogImpl:Lcom/platform/usercenter/tools/log/ILog;

    if-eqz v0, :cond_0

    .line 153
    sget-object v0, Lcom/platform/usercenter/tools/log/UCLogUtil;->sLogImpl:Lcom/platform/usercenter/tools/log/ILog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/platform/usercenter/tools/log/UCLogUtil;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/platform/usercenter/tools/log/ILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 154
    :cond_0
    invoke-static {}, Lcom/platform/usercenter/tools/log/UCLogUtil;->getDecideResult()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/platform/usercenter/tools/log/UCLogUtil;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :cond_1
    :goto_0
    return-void
.end method

.method public static i(Ljava/lang/String;F)V
    .locals 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "info"    # F

    .line 169
    sget-object v0, Lcom/platform/usercenter/tools/log/UCLogUtil;->sLogImpl:Lcom/platform/usercenter/tools/log/ILog;

    if-eqz v0, :cond_0

    .line 170
    sget-object v0, Lcom/platform/usercenter/tools/log/UCLogUtil;->sLogImpl:Lcom/platform/usercenter/tools/log/ILog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/platform/usercenter/tools/log/UCLogUtil;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/platform/usercenter/tools/log/ILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 171
    :cond_0
    invoke-static {}, Lcom/platform/usercenter/tools/log/UCLogUtil;->getDecideResult()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/platform/usercenter/tools/log/UCLogUtil;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    :cond_1
    :goto_0
    return-void
.end method

.method public static i(Ljava/lang/String;I)V
    .locals 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "info"    # I

    .line 135
    sget-object v0, Lcom/platform/usercenter/tools/log/UCLogUtil;->sLogImpl:Lcom/platform/usercenter/tools/log/ILog;

    if-eqz v0, :cond_0

    .line 136
    sget-object v0, Lcom/platform/usercenter/tools/log/UCLogUtil;->sLogImpl:Lcom/platform/usercenter/tools/log/ILog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/platform/usercenter/tools/log/UCLogUtil;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/platform/usercenter/tools/log/ILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 137
    :cond_0
    invoke-static {}, Lcom/platform/usercenter/tools/log/UCLogUtil;->getDecideResult()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/platform/usercenter/tools/log/UCLogUtil;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :cond_1
    :goto_0
    return-void
.end method

.method public static i(Ljava/lang/String;J)V
    .locals 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "info"    # J

    .line 160
    sget-object v0, Lcom/platform/usercenter/tools/log/UCLogUtil;->sLogImpl:Lcom/platform/usercenter/tools/log/ILog;

    if-eqz v0, :cond_0

    .line 161
    sget-object v0, Lcom/platform/usercenter/tools/log/UCLogUtil;->sLogImpl:Lcom/platform/usercenter/tools/log/ILog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/platform/usercenter/tools/log/UCLogUtil;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/platform/usercenter/tools/log/ILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 162
    :cond_0
    invoke-static {}, Lcom/platform/usercenter/tools/log/UCLogUtil;->getDecideResult()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/platform/usercenter/tools/log/UCLogUtil;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    :cond_1
    :goto_0
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "info"    # Ljava/lang/String;

    .line 60
    sget-object v0, Lcom/platform/usercenter/tools/log/UCLogUtil;->sLogImpl:Lcom/platform/usercenter/tools/log/ILog;

    if-eqz v0, :cond_0

    .line 61
    sget-object v0, Lcom/platform/usercenter/tools/log/UCLogUtil;->sLogImpl:Lcom/platform/usercenter/tools/log/ILog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/platform/usercenter/tools/log/UCLogUtil;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/platform/usercenter/tools/log/ILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 62
    :cond_0
    invoke-static {}, Lcom/platform/usercenter/tools/log/UCLogUtil;->getDecideResult()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/platform/usercenter/tools/log/UCLogUtil;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :cond_1
    :goto_0
    return-void
.end method

.method public static init(Ljava/lang/String;)V
    .locals 0
    .param p0, "tag"    # Ljava/lang/String;

    .line 48
    sput-object p0, Lcom/platform/usercenter/tools/log/UCLogUtil;->TAG:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public static setLogImpl(Lcom/platform/usercenter/tools/log/ILog;)V
    .locals 0
    .param p0, "logImpl"    # Lcom/platform/usercenter/tools/log/ILog;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 44
    sput-object p0, Lcom/platform/usercenter/tools/log/UCLogUtil;->sLogImpl:Lcom/platform/usercenter/tools/log/ILog;

    .line 45
    return-void
.end method

.method public static switchLogButton(Z)V
    .locals 0
    .param p0, "status"    # Z

    .line 52
    sput-boolean p0, Lcom/platform/usercenter/tools/log/UCLogUtil;->mLogButton:Z

    .line 53
    return-void
.end method

.method public static traceE(Ljava/lang/String;)V
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .line 220
    invoke-static {}, Lcom/platform/usercenter/tools/log/UCLogUtil;->getDecideResult()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    sget-object v0, Lcom/platform/usercenter/tools/log/UCLogUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 224
    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "info"    # Ljava/lang/String;

    .line 68
    sget-object v0, Lcom/platform/usercenter/tools/log/UCLogUtil;->sLogImpl:Lcom/platform/usercenter/tools/log/ILog;

    if-eqz v0, :cond_0

    .line 69
    sget-object v0, Lcom/platform/usercenter/tools/log/UCLogUtil;->sLogImpl:Lcom/platform/usercenter/tools/log/ILog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/platform/usercenter/tools/log/UCLogUtil;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/platform/usercenter/tools/log/ILog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 70
    :cond_0
    invoke-static {}, Lcom/platform/usercenter/tools/log/UCLogUtil;->getDecideResult()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/platform/usercenter/tools/log/UCLogUtil;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    :cond_1
    :goto_0
    return-void
.end method
