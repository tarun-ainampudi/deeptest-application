.class public Lcom/platform/usercenter/tools/device/UCDeviceInfoUtil;
.super Ljava/lang/Object;
.source "UCDeviceInfoUtil.java"


# static fields
.field public static final DEFAULT_MAC:Ljava/lang/String; = "0"

.field public static final DEFAULT_NULL:Ljava/lang/String; = ""

.field public static final Default_Region:Ljava/lang/String; = "CN"

.field private static final SYSTEM_PROPERTY:Ljava/lang/String; = "gxxg&kgeegfWkmf|mz&ei{|mz"

.field private static sResolution:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkBetaEnv(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 939
    if-nez p0, :cond_0

    .line 940
    const/4 v0, 0x0

    return v0

    .line 942
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 943
    .local v0, "packageManager":Landroid/content/pm/PackageManager;
    const-string v1, "gxxg&kgeegfWkmf|mz&ei{|mz"

    const/16 v2, 0x8

    invoke-static {v1, v2}, Lcom/platform/usercenter/tools/algorithm/XORUtils;->encrypt(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 944
    .local v1, "property":Ljava/lang/String;
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    return v2
.end method

.method private static getAfterSaleRegion()Ljava/lang/String;
    .locals 2

    .line 677
    invoke-static {}, Lcom/platform/usercenter/basic/provider/UCSystemInfoXor8Provider;->regionMarkGreenOldSystemName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CN"

    invoke-static {v0, v1}, Lcom/platform/usercenter/tools/os/SystemPropertyUtils;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 679
    .local v0, "region":Ljava/lang/String;
    const-string v1, "OC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 680
    const-string v1, "CN"

    return-object v1

    .line 682
    :cond_0
    return-object v0
.end method

.method public static getAndroidId(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 126
    if-eqz p0, :cond_1

    .line 130
    sget-boolean v0, Lcom/platform/usercenter/tools/os/UCRuntimeEnvironment;->sIsExp:Z

    if-eqz v0, :cond_0

    .line 131
    const-string v0, ""

    return-object v0

    .line 133
    :cond_0
    const/4 v0, 0x0

    .line 135
    .local v0, "str":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "android_id"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 142
    goto :goto_0

    .line 136
    :catch_0
    move-exception v1

    .line 138
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v1}, Lcom/platform/usercenter/tools/log/UCLogUtil;->e(Ljava/lang/Exception;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 141
    goto :goto_0

    .line 139
    :catch_1
    move-exception v2

    .line 140
    .local v2, "e2":Ljava/lang/Exception;
    invoke-static {v2}, Lcom/platform/usercenter/tools/log/UCLogUtil;->e(Ljava/lang/Exception;)V

    .line 143
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "e2":Ljava/lang/Exception;
    :goto_0
    return-object v0

    .line 127
    .end local v0    # "str":Ljava/lang/String;
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "context is null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getAndroidVersion()Ljava/lang/String;
    .locals 1

    .line 728
    :try_start_0
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-static {v0}, Lcom/platform/usercenter/tools/device/UCDeviceInfoUtil;->getFormatString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 729
    :catch_0
    move-exception v0

    .line 732
    const-string v0, ""

    return-object v0
.end method

.method public static getBrand()Ljava/lang/String;
    .locals 1

    .line 255
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    return-object v0
.end method

.method public static getBuildTime()J
    .locals 2

    .line 359
    sget-wide v0, Landroid/os/Build;->TIME:J

    return-wide v0
.end method

.method public static getCPUInfo()Ljava/lang/String;
    .locals 9

    .line 164
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 165
    .local v0, "sb":Ljava/lang/StringBuffer;
    const-string v1, "ro.product.cpuinfo"

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/platform/usercenter/tools/os/SystemPropertyUtils;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 166
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 167
    :try_start_0
    new-instance v1, Ljava/io/FileReader;

    const-string v2, "/proc/cpuinfo"

    invoke-direct {v1, v2}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    .local v1, "fr":Ljava/io/FileReader;
    const/4 v2, 0x0

    :try_start_1
    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 169
    .local v3, "br":Ljava/io/BufferedReader;
    :goto_0
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    move-object v5, v4

    .local v5, "aLine":Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 170
    move-object v4, v5

    .line 171
    .local v4, "temp":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    const-string v7, "hardware"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 172
    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 173
    .end local v4    # "temp":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 175
    .end local v5    # "aLine":Ljava/lang/String;
    :cond_1
    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .end local v3    # "br":Ljava/io/BufferedReader;
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 177
    .end local v1    # "fr":Ljava/io/FileReader;
    goto :goto_5

    .line 175
    .restart local v1    # "fr":Ljava/io/FileReader;
    .restart local v3    # "br":Ljava/io/BufferedReader;
    :catchall_0
    move-exception v4

    move-object v5, v2

    goto :goto_1

    .line 167
    :catch_0
    move-exception v4

    :try_start_5
    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 175
    :catchall_1
    move-exception v5

    move-object v8, v5

    move-object v5, v4

    move-object v4, v8

    :goto_1
    if-eqz v5, :cond_2

    :try_start_6
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_2

    :catch_1
    move-exception v6

    :try_start_7
    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    :goto_2
    throw v4
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .end local v3    # "br":Ljava/io/BufferedReader;
    :catchall_2
    move-exception v3

    goto :goto_3

    .line 167
    :catch_2
    move-exception v2

    :try_start_8
    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 175
    :goto_3
    if-eqz v2, :cond_3

    :try_start_9
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    goto :goto_4

    :catch_3
    move-exception v4

    :try_start_a
    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_3
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V

    :goto_4
    throw v3
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    .end local v1    # "fr":Ljava/io/FileReader;
    :catch_4
    move-exception v1

    .line 176
    .local v1, "e":Ljava/io/IOException;
    invoke-static {v1}, Lcom/platform/usercenter/tools/log/UCLogUtil;->e(Ljava/lang/Exception;)V

    .line 180
    .end local v1    # "e":Ljava/io/IOException;
    :cond_4
    :goto_5
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getCPU_ABI()Ljava/lang/String;
    .locals 5

    .line 147
    const-string v0, ""

    .line 148
    .local v0, "result":Ljava/lang/String;
    invoke-static {}, Lcom/platform/usercenter/tools/os/Version;->hasL()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 149
    sget-object v1, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    .line 150
    .local v1, "ABIS":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 151
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v1, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 150
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 153
    .end local v1    # "ABIS":[Ljava/lang/String;
    .end local v2    # "i":I
    :cond_0
    goto :goto_1

    .line 155
    :cond_1
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 157
    goto :goto_1

    .line 156
    :catch_0
    move-exception v1

    .line 160
    :goto_1
    return-object v0
.end method

.method public static getCpuName2()Ljava/lang/String;
    .locals 15

    .line 187
    const-string v0, "ro.product.cpuinfo"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/platform/usercenter/tools/os/SystemPropertyUtils;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 188
    .local v0, "cpuName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 189
    return-object v0

    .line 192
    :cond_0
    const-string v1, "MSM\\s*\\w+"

    .line 193
    .local v1, "regEx":Ljava/lang/String;
    const-string v2, "SDM\\s*\\w+"

    .line 195
    .local v2, "reg2Ex":Ljava/lang/String;
    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Ljava/io/FileReader;

    const-string v5, "/proc/cpuinfo"

    invoke-direct {v4, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7

    .local v4, "fr":Ljava/io/FileReader;
    :try_start_1
    new-instance v5, Ljava/io/BufferedReader;

    invoke-direct {v5, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 196
    move-object v6, v3

    .local v5, "br":Ljava/io/BufferedReader;
    .local v6, "text":Ljava/lang/String;
    :cond_1
    :goto_0
    :try_start_2
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    .end local v6    # "text":Ljava/lang/String;
    move-object v6, v7

    .restart local v6    # "text":Ljava/lang/String;
    if-eqz v7, :cond_5

    .line 197
    const-string v7, "Hardware"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v7, "MSM"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string v7, "SDM"

    .line 198
    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 199
    :cond_2
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v7

    .line 200
    .local v7, "pat":Ljava/util/regex/Pattern;
    invoke-virtual {v7, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    .line 201
    .local v8, "mat":Ljava/util/regex/Matcher;
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->find()Z

    move-result v9

    const/4 v10, 0x0

    if-nez v9, :cond_4

    .line 202
    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v9

    .line 203
    .local v9, "pat2":Ljava/util/regex/Pattern;
    invoke-virtual {v9, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v11

    .line 204
    .local v11, "mat2":Ljava/util/regex/Matcher;
    invoke-virtual {v11}, Ljava/util/regex/Matcher;->find()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 205
    invoke-virtual {v11, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    .line 206
    .local v10, "str":Ljava/lang/String;
    const-string v12, "\\s*"

    const-string v13, ""

    invoke-virtual {v10, v12, v13}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object v0, v12

    .line 208
    .end local v9    # "pat2":Ljava/util/regex/Pattern;
    .end local v10    # "str":Ljava/lang/String;
    .end local v11    # "mat2":Ljava/util/regex/Matcher;
    :cond_3
    goto :goto_1

    .line 209
    :cond_4
    invoke-virtual {v8, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    .line 210
    .local v9, "str":Ljava/lang/String;
    const-string v10, "\\s*"

    const-string v11, ""

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v0, v10

    .line 212
    .end local v7    # "pat":Ljava/util/regex/Pattern;
    .end local v8    # "mat":Ljava/util/regex/Matcher;
    .end local v9    # "str":Ljava/lang/String;
    :goto_1
    goto :goto_0

    .line 214
    :cond_5
    :try_start_3
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v5    # "br":Ljava/io/BufferedReader;
    move-object v3, v6

    .end local v6    # "text":Ljava/lang/String;
    .local v3, "text":Ljava/lang/String;
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7

    .line 216
    .end local v4    # "fr":Ljava/io/FileReader;
    goto :goto_8

    .line 214
    .end local v3    # "text":Ljava/lang/String;
    .restart local v4    # "fr":Ljava/io/FileReader;
    .restart local v6    # "text":Ljava/lang/String;
    :catchall_0
    move-exception v5

    move-object v8, v6

    goto :goto_5

    .line 195
    :catch_0
    move-exception v3

    move-object v8, v6

    goto :goto_4

    .line 214
    .restart local v5    # "br":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v7

    move-object v8, v6

    move-object v6, v3

    goto :goto_2

    .line 195
    :catch_1
    move-exception v7

    :try_start_5
    throw v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 214
    :catchall_2
    move-exception v8

    move-object v14, v8

    move-object v8, v6

    move-object v6, v7

    move-object v7, v14

    .end local v6    # "text":Ljava/lang/String;
    .local v8, "text":Ljava/lang/String;
    :goto_2
    if-eqz v6, :cond_6

    :try_start_6
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    goto :goto_3

    :catch_2
    move-exception v9

    :try_start_7
    invoke-virtual {v6, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_6
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    :goto_3
    throw v7
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 195
    .end local v5    # "br":Ljava/io/BufferedReader;
    :catch_3
    move-exception v3

    goto :goto_4

    .line 214
    .end local v8    # "text":Ljava/lang/String;
    :catchall_3
    move-exception v5

    move-object v8, v3

    goto :goto_5

    .line 195
    :catch_4
    move-exception v5

    move-object v8, v3

    move-object v3, v5

    .restart local v8    # "text":Ljava/lang/String;
    :goto_4
    :try_start_8
    throw v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 214
    :catchall_4
    move-exception v5

    :goto_5
    if-eqz v3, :cond_7

    :try_start_9
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_5
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    goto :goto_6

    :catch_5
    move-exception v6

    :try_start_a
    invoke-virtual {v3, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_6

    :cond_7
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V

    :goto_6
    throw v5
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    .end local v4    # "fr":Ljava/io/FileReader;
    :catch_6
    move-exception v4

    move-object v3, v8

    goto :goto_7

    .end local v8    # "text":Ljava/lang/String;
    :catch_7
    move-exception v4

    .line 215
    .restart local v3    # "text":Ljava/lang/String;
    .local v4, "e":Ljava/io/IOException;
    :goto_7
    invoke-static {v4}, Lcom/platform/usercenter/tools/log/UCLogUtil;->e(Ljava/lang/Exception;)V

    .line 217
    .end local v4    # "e":Ljava/io/IOException;
    :goto_8
    return-object v0
.end method

.method public static getCurRegion()Ljava/lang/String;
    .locals 2

    .line 623
    invoke-static {}, Lcom/platform/usercenter/tools/os/UCOSVersionUtil;->getOSVersionCode()I

    move-result v0

    const/16 v1, 0x16

    if-lt v0, v1, :cond_0

    .line 624
    invoke-static {}, Lcom/platform/usercenter/basic/provider/UCSystemInfoXor8Provider;->regionOPlusPropertySystemName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/platform/usercenter/tools/os/SystemPropertyUtils;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 627
    :cond_0
    invoke-static {}, Lcom/platform/usercenter/basic/provider/UCSystemInfoXor8Provider;->regionPropertySystemName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CN"

    invoke-static {v0, v1}, Lcom/platform/usercenter/tools/os/SystemPropertyUtils;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 630
    .local v0, "region":Ljava/lang/String;
    :goto_0
    const-string v1, "OC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 631
    const-string v1, "CN"

    return-object v1

    .line 633
    :cond_1
    return-object v0
.end method

.method public static getDPI(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 263
    if-eqz p0, :cond_0

    .line 268
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 269
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->densityDpi:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 270
    .end local v0    # "displayMetrics":Landroid/util/DisplayMetrics;
    :catch_0
    move-exception v0

    .line 273
    const/4 v0, 0x0

    return v0

    .line 264
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "context is null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getDeviceId(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .line 228
    if-eqz p0, :cond_2

    .line 231
    invoke-static {}, Lcom/platform/usercenter/tools/os/Version;->hasM()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "android.permission.READ_PHONE_STATE"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 232
    return-object v1

    .line 235
    :cond_0
    :try_start_0
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 236
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    const/4 v2, 0x0

    .line 237
    .local v2, "imeiTemp":Ljava/lang/String;
    invoke-static {}, Lcom/platform/usercenter/tools/os/Version;->hasO()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 238
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/telephony/TelephonyManager;->getImei(I)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    goto :goto_0

    .line 240
    :cond_1
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 242
    :goto_0
    invoke-static {v2}, Lcom/platform/usercenter/tools/device/UCDeviceInfoUtil;->getFormatString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 243
    .end local v0    # "tm":Landroid/telephony/TelephonyManager;
    .end local v2    # "imeiTemp":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 244
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/platform/usercenter/tools/log/UCLogUtil;->e(Ljava/lang/Exception;)V

    .line 246
    .end local v0    # "ex":Ljava/lang/Exception;
    return-object v1

    .line 229
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "context is null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getDeviceName(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 606
    :try_start_0
    invoke-static {}, Lcom/platform/usercenter/basic/provider/UCSystemInfoXor8Provider;->clazzColorSysBuild()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/platform/usercenter/tools/reflect/Reflect;->on(Ljava/lang/String;)Lcom/platform/usercenter/tools/reflect/Reflect;

    move-result-object v0

    const-string v1, "getDeviceName"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/platform/usercenter/tools/reflect/Reflect;->call(Ljava/lang/String;[Ljava/lang/Object;)Lcom/platform/usercenter/tools/reflect/Reflect;

    move-result-object v0

    .line 607
    invoke-virtual {v0}, Lcom/platform/usercenter/tools/reflect/Reflect;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 608
    .local v0, "deviceName":Ljava/lang/String;
    const/16 v1, 0x64

    invoke-static {v0, v1}, Lcom/platform/usercenter/tools/datastructure/StringUtil;->subString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 609
    .end local v0    # "deviceName":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 611
    const-string v0, ""

    return-object v0
.end method

.method public static getDisplay()Ljava/lang/String;
    .locals 1

    .line 259
    sget-object v0, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    return-object v0
.end method

.method public static getFingerPrint()Ljava/lang/String;
    .locals 1

    .line 277
    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    return-object v0
.end method

.method public static getFoldAngle(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 977
    const/4 v0, 0x0

    .line 979
    .local v0, "foldAngle":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "oplus_system_folding_angle"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 982
    goto :goto_0

    .line 980
    :catch_0
    move-exception v1

    .line 981
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/platform/usercenter/tools/log/UCLogUtil;->e(Ljava/lang/String;)V

    .line 983
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    if-nez v0, :cond_0

    const-string v1, ""

    goto :goto_1

    :cond_0
    move-object v1, v0

    :goto_1
    return-object v1
.end method

.method public static getFoldMode(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 962
    const/4 v0, 0x0

    .line 964
    .local v0, "foldMode":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "oplus_system_folding_mode"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 967
    goto :goto_0

    .line 965
    :catch_0
    move-exception v1

    .line 966
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/platform/usercenter/tools/log/UCLogUtil;->e(Ljava/lang/String;)V

    .line 968
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    if-nez v0, :cond_0

    const-string v1, ""

    goto :goto_1

    :cond_0
    move-object v1, v0

    :goto_1
    return-object v1
.end method

.method public static getFormatString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .line 750
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 751
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xf

    if-le v0, v1, :cond_0

    .line 752
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 755
    :cond_0
    :try_start_0
    const-string v0, "UTF-8"

    invoke-static {p0, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 756
    :catch_0
    move-exception v0

    .line 757
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/platform/usercenter/tools/log/UCLogUtil;->e(Ljava/lang/Exception;)V

    .line 760
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    const-string v0, ""

    return-object v0
.end method

.method public static getInternalMacAddress(Landroid/content/Context;)Ljava/lang/String;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;

    .line 851
    const-string v0, "0"

    .line 852
    .local v0, "macAddress":Ljava/lang/String;
    invoke-static {}, Lcom/platform/usercenter/tools/os/Version;->hasM()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 853
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 856
    .local v1, "buf":Ljava/lang/StringBuffer;
    :try_start_0
    const-string v2, "wlan0"

    invoke-static {v2}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;

    move-result-object v2

    .line 857
    .local v2, "networkInterface":Ljava/net/NetworkInterface;
    if-nez v2, :cond_0

    .line 858
    const-string v3, "eth0"

    invoke-static {v3}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;

    move-result-object v3

    move-object v2, v3

    .line 860
    :cond_0
    if-eqz v2, :cond_3

    .line 861
    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getHardwareAddress()[B

    move-result-object v3

    .line 862
    .local v3, "address":[B
    array-length v4, v3

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    const/4 v7, 0x1

    if-ge v6, v4, :cond_1

    aget-byte v8, v3, v6

    .line 863
    .local v8, "b":B
    const-string v9, "%02X:"

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v10

    aput-object v10, v7, v5

    invoke-static {v9, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 862
    .end local v8    # "b":B
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 865
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    if-lez v4, :cond_2

    .line 866
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    sub-int/2addr v4, v7

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 868
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v4

    .line 872
    .end local v3    # "address":[B
    :cond_3
    goto :goto_1

    .line 870
    .end local v2    # "networkInterface":Ljava/net/NetworkInterface;
    :catch_0
    move-exception v2

    .line 871
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lcom/platform/usercenter/tools/log/UCLogUtil;->e(Ljava/lang/Exception;)V

    .line 873
    .end local v1    # "buf":Ljava/lang/StringBuffer;
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    goto :goto_2

    .line 875
    :cond_4
    :try_start_1
    const-string v1, "wifi"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 876
    .local v1, "wifi":Landroid/net/wifi/WifiManager;
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    .line 877
    .local v2, "info":Landroid/net/wifi/WifiInfo;
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 878
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v3

    .line 882
    .end local v1    # "wifi":Landroid/net/wifi/WifiManager;
    .end local v2    # "info":Landroid/net/wifi/WifiInfo;
    :cond_5
    goto :goto_2

    .line 880
    :catch_1
    move-exception v1

    .line 881
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/platform/usercenter/tools/log/UCLogUtil;->e(Ljava/lang/Exception;)V

    .line 885
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_2
    invoke-static {v0}, Lcom/platform/usercenter/tools/device/UCDeviceInfoUtil;->getValueEncoded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 886
    .local v1, "mac":Ljava/lang/String;
    return-object v1
.end method

.method public static getIpAddress(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .line 103
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v0

    .local v0, "enNetI":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 104
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/NetworkInterface;

    .line 105
    .local v1, "netI":Ljava/net/NetworkInterface;
    nop

    .line 106
    invoke-virtual {v1}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v2

    .local v2, "enumIpAddr":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :goto_1
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 107
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    .line 108
    .local v3, "inetAddress":Ljava/net/InetAddress;
    instance-of v4, v3, Ljava/net/Inet4Address;

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v4

    if-nez v4, :cond_0

    .line 109
    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .line 111
    .end local v3    # "inetAddress":Ljava/net/InetAddress;
    :cond_0
    goto :goto_1

    .line 112
    .end local v1    # "netI":Ljava/net/NetworkInterface;
    .end local v2    # "enumIpAddr":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :cond_1
    goto :goto_0

    .line 115
    .end local v0    # "enNetI":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :cond_2
    goto :goto_2

    .line 113
    :catch_0
    move-exception v0

    .line 114
    .local v0, "e":Ljava/net/SocketException;
    invoke-virtual {v0}, Ljava/net/SocketException;->printStackTrace()V

    .line 116
    .end local v0    # "e":Ljava/net/SocketException;
    :goto_2
    const-string v0, ""

    return-object v0
.end method

.method public static getLanguage()Ljava/lang/String;
    .locals 1

    .line 580
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLanguageTag()Ljava/lang/String;
    .locals 6

    .line 584
    invoke-static {}, Lcom/platform/usercenter/tools/os/Version;->hasL()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 585
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v0

    .line 586
    .local v0, "tag":Ljava/lang/String;
    const-string v1, "id-ID"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 587
    const-string v0, "in-ID"

    goto :goto_0

    .line 589
    :cond_0
    invoke-static {v0}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v1

    .line 590
    .local v1, "locale":Ljava/util/Locale;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 591
    .local v2, "buf":Ljava/lang/StringBuilder;
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 592
    const-string v3, "TAG"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "tag:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/platform/usercenter/tools/log/UCLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 594
    .end local v1    # "locale":Ljava/util/Locale;
    .end local v2    # "buf":Ljava/lang/StringBuilder;
    :goto_0
    return-object v0

    .line 596
    .end local v0    # "tag":Ljava/lang/String;
    :cond_1
    sget-boolean v0, Lcom/platform/usercenter/tools/os/UCRuntimeEnvironment;->sIsExp:Z

    if-eqz v0, :cond_2

    .line 597
    const-string v0, "en-US"

    return-object v0

    .line 599
    :cond_2
    const-string v0, "zh-CN"

    return-object v0
.end method

.method public static getLocale(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 487
    if-eqz p0, :cond_0

    .line 492
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 493
    :catch_0
    move-exception v0

    .line 494
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, ""

    return-object v1

    .line 488
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "context is null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getMacAddress(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 325
    if-eqz p0, :cond_1

    .line 328
    sget-boolean v0, Lcom/platform/usercenter/tools/os/UCRuntimeEnvironment;->sIsExp:Z

    if-eqz v0, :cond_0

    .line 329
    const-string v0, ""

    return-object v0

    .line 333
    :cond_0
    invoke-static {p0}, Lcom/platform/usercenter/tools/device/UCDeviceInfoUtil;->getInternalMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x64

    invoke-static {v0, v1}, Lcom/platform/usercenter/tools/datastructure/StringUtil;->subString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 326
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "context is null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getManufacture()Ljava/lang/String;
    .locals 1

    .line 742
    :try_start_0
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-static {v0}, Lcom/platform/usercenter/tools/device/UCDeviceInfoUtil;->getFormatString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 743
    :catch_0
    move-exception v0

    .line 746
    const-string v0, ""

    return-object v0
.end method

.method public static getManufactureBySystemInfo()Ljava/lang/String;
    .locals 2

    .line 898
    :try_start_0
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 899
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/platform/usercenter/basic/provider/UCCommonXor8Provider;->getBrandGreen()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 900
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    return-object v0

    .line 901
    :cond_0
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "unknown"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 902
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    return-object v0

    .line 904
    :cond_1
    const-string v0, "0"

    return-object v0

    .line 907
    :cond_2
    const-string v0, "0"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 909
    :catch_0
    move-exception v0

    .line 910
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/platform/usercenter/tools/log/UCLogUtil;->e(Ljava/lang/Exception;)V

    .line 912
    .end local v0    # "e":Ljava/lang/Exception;
    const-string v0, "0"

    return-object v0
.end method

.method public static getManufacturer()Ljava/lang/String;
    .locals 1

    .line 499
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    return-object v0
.end method

.method public static getMarketName()Ljava/lang/String;
    .locals 3

    .line 657
    const/4 v0, 0x0

    .line 658
    .local v0, "marketName":Ljava/lang/String;
    invoke-static {}, Lcom/platform/usercenter/tools/os/Version;->hasR()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 659
    invoke-static {}, Lcom/platform/usercenter/basic/provider/UCSystemInfoXor8Provider;->marketNameAfterOplusSystemName()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/platform/usercenter/tools/os/SystemPropertyUtils;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 663
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 664
    invoke-static {}, Lcom/platform/usercenter/basic/provider/UCSystemInfoXor8Provider;->marketNameBeforOplusSystemName()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/platform/usercenter/tools/os/SystemPropertyUtils;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 667
    :cond_1
    const/16 v1, 0x64

    invoke-static {v0, v1}, Lcom/platform/usercenter/tools/datastructure/StringUtil;->subString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static getMemoryInfo(Ljava/io/File;Landroid/content/Context;)J
    .locals 9
    .param p0, "path"    # Ljava/io/File;
    .param p1, "context"    # Landroid/content/Context;

    .line 439
    if-eqz p1, :cond_0

    .line 444
    new-instance v0, Landroid/os/StatFs;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 446
    .local v0, "stat":Landroid/os/StatFs;
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v1

    int-to-long v1, v1

    .line 448
    .local v1, "blockSize":J
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockCount()I

    move-result v3

    int-to-long v3, v3

    .line 450
    .local v3, "totalBlocks":J
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v5

    int-to-long v5, v5

    .line 452
    .local v5, "availableBlocks":J
    mul-long v7, v3, v1

    return-wide v7

    .line 440
    .end local v0    # "stat":Landroid/os/StatFs;
    .end local v1    # "blockSize":J
    .end local v3    # "totalBlocks":J
    .end local v5    # "availableBlocks":J
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "context is null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getModel()Ljava/lang/String;
    .locals 1

    .line 337
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method public static getNetworkName(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 503
    if-eqz p0, :cond_4

    .line 507
    const-string v0, "connectivity"

    .line 508
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 509
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 510
    .local v0, "activeNetworkInfo":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 513
    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 514
    const-string v1, "WIFI"

    return-object v1

    .line 516
    :cond_1
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-eqz v1, :cond_2

    .line 517
    const-string v1, ""

    return-object v1

    .line 519
    :cond_2
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 539
    const-string v1, ""

    return-object v1

    .line 537
    :pswitch_0
    const-string v1, "4G"

    return-object v1

    .line 535
    :pswitch_1
    const-string v1, "3G"

    return-object v1

    .line 525
    :pswitch_2
    const-string v1, "2G"

    return-object v1

    .line 511
    :cond_3
    :goto_0
    const-string v1, ""

    return-object v1

    .line 504
    .end local v0    # "activeNetworkInfo":Landroid/net/NetworkInfo;
    :cond_4
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "context is null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static getOSIMEI(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 287
    if-eqz p0, :cond_0

    .line 291
    :try_start_0
    invoke-static {p0}, Lcom/platform/usercenter/tools/device/ClientIdUtils;->getClientId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x64

    invoke-static {v0, v1}, Lcom/platform/usercenter/tools/datastructure/StringUtil;->subString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 292
    :catch_0
    move-exception v0

    .line 293
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/platform/usercenter/tools/log/UCLogUtil;->e(Ljava/lang/Exception;)V

    .line 294
    const/4 v1, 0x0

    return-object v1

    .line 288
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "context is null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getOperators(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 711
    :try_start_0
    const-string v0, "phone"

    .line 712
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 713
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 714
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/platform/usercenter/tools/device/UCDeviceInfoUtil;->getFormatString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 717
    .end local v0    # "tm":Landroid/telephony/TelephonyManager;
    :cond_0
    goto :goto_0

    .line 716
    :catch_0
    move-exception v0

    .line 718
    :goto_0
    const-string v0, ""

    return-object v0
.end method

.method public static getOsVersion()Ljava/lang/String;
    .locals 8

    .line 70
    const-string v0, "0"

    .line 74
    .local v0, "romVersion":Ljava/lang/String;
    :try_start_0
    const-string v1, "android.os.SystemProperties"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 75
    .local v1, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v2, "get"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-class v5, Ljava/lang/String;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 76
    .local v2, "m":Ljava/lang/reflect/Method;
    new-array v3, v3, [Ljava/lang/Object;

    .line 77
    invoke-static {}, Lcom/platform/usercenter/basic/provider/UCSystemInfoXor8Provider;->romVersionPropertySystemName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    const-string v4, "unknown"

    aput-object v4, v3, v7

    .line 76
    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    .line 90
    .end local v1    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "m":Ljava/lang/reflect/Method;
    :goto_0
    goto :goto_1

    .line 88
    :catch_0
    move-exception v1

    .line 89
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    invoke-static {v1}, Lcom/platform/usercenter/tools/log/UCLogUtil;->e(Ljava/lang/Exception;)V

    goto :goto_1

    .line 86
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v1

    .line 87
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-static {v1}, Lcom/platform/usercenter/tools/log/UCLogUtil;->e(Ljava/lang/Exception;)V

    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    goto :goto_0

    .line 84
    :catch_2
    move-exception v1

    .line 85
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-static {v1}, Lcom/platform/usercenter/tools/log/UCLogUtil;->e(Ljava/lang/Exception;)V

    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    goto :goto_0

    .line 82
    :catch_3
    move-exception v1

    .line 83
    .local v1, "e":Ljava/lang/IllegalAccessException;
    invoke-static {v1}, Lcom/platform/usercenter/tools/log/UCLogUtil;->e(Ljava/lang/Exception;)V

    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    goto :goto_0

    .line 80
    :catch_4
    move-exception v1

    .line 81
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    invoke-static {v1}, Lcom/platform/usercenter/tools/log/UCLogUtil;->e(Ljava/lang/Exception;)V

    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    goto :goto_0

    .line 91
    :goto_1
    return-object v0
.end method

.method public static getOsVersionRelease()Ljava/lang/String;
    .locals 1

    .line 363
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    return-object v0
.end method

.method public static getOsVersionSDK()Ljava/lang/String;
    .locals 1

    .line 367
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getRamMemoryTotalSize(Landroid/content/Context;)J
    .locals 12
    .param p0, "context"    # Landroid/content/Context;

    .line 377
    const-string v0, "/proc/meminfo"

    .line 380
    .local v0, "str1":Ljava/lang/String;
    const-wide/16 v1, 0x0

    .line 381
    .local v1, "initial_memory":J
    const/4 v3, 0x0

    .line 382
    .local v3, "localFileReader":Ljava/io/FileReader;
    const/4 v4, 0x0

    .line 384
    .local v4, "localBufferedReader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    move-object v3, v5

    .line 385
    new-instance v5, Ljava/io/BufferedReader;

    const/16 v6, 0x2000

    invoke-direct {v5, v3, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    move-object v4, v5

    .line 386
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .line 387
    .local v5, "str2":Ljava/lang/String;
    const-string v6, "\\s+"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 388
    .local v6, "arrayOfString":[Ljava/lang/String;
    array-length v7, v6

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v7, :cond_0

    aget-object v9, v6, v8

    .line 389
    .local v9, "num":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "\t"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Lcom/platform/usercenter/tools/log/UCLogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    .end local v9    # "num":Ljava/lang/String;
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 391
    :cond_0
    const/4 v7, 0x1

    aget-object v7, v6, v7

    invoke-static {v7}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    const-wide/16 v9, 0x400

    mul-long v1, v7, v9

    .line 392
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 396
    nop

    .line 398
    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 401
    goto :goto_1

    .line 399
    :catch_0
    move-exception v7

    .line 400
    .local v7, "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    .line 404
    .end local v7    # "e":Ljava/io/IOException;
    :goto_1
    nop

    .line 406
    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 409
    .end local v5    # "str2":Ljava/lang/String;
    .end local v6    # "arrayOfString":[Ljava/lang/String;
    :goto_2
    goto :goto_4

    .line 407
    .restart local v5    # "str2":Ljava/lang/String;
    .restart local v6    # "arrayOfString":[Ljava/lang/String;
    :catch_1
    move-exception v7

    .line 408
    .restart local v7    # "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    .end local v7    # "e":Ljava/io/IOException;
    goto :goto_2

    .line 396
    .end local v5    # "str2":Ljava/lang/String;
    .end local v6    # "arrayOfString":[Ljava/lang/String;
    :catchall_0
    move-exception v5

    goto :goto_5

    .line 393
    :catch_2
    move-exception v5

    .line 394
    .local v5, "e":Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 396
    .end local v5    # "e":Ljava/io/IOException;
    if-eqz v3, :cond_1

    .line 398
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 401
    goto :goto_3

    .line 399
    :catch_3
    move-exception v5

    .line 400
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 404
    .end local v5    # "e":Ljava/io/IOException;
    :cond_1
    :goto_3
    if-eqz v4, :cond_2

    .line 406
    :try_start_5
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_2

    .line 407
    :catch_4
    move-exception v5

    .line 408
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .end local v5    # "e":Ljava/io/IOException;
    goto :goto_2

    .line 412
    :cond_2
    :goto_4
    return-wide v1

    .line 396
    :goto_5
    if-eqz v3, :cond_3

    .line 398
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 401
    goto :goto_6

    .line 399
    :catch_5
    move-exception v6

    .line 400
    .local v6, "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    .line 404
    .end local v6    # "e":Ljava/io/IOException;
    :cond_3
    :goto_6
    if-eqz v4, :cond_4

    .line 406
    :try_start_7
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    .line 409
    goto :goto_7

    .line 407
    :catch_6
    move-exception v6

    .line 408
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    .line 409
    .end local v6    # "e":Ljava/io/IOException;
    :cond_4
    :goto_7
    throw v5
.end method

.method public static getRegionMark()Ljava/lang/String;
    .locals 2

    .line 641
    invoke-static {}, Lcom/platform/usercenter/basic/provider/UCSystemInfoXor8Provider;->regionMarkGreenSystemName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CN"

    invoke-static {v0, v1}, Lcom/platform/usercenter/tools/os/SystemPropertyUtils;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 643
    .local v0, "region":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 644
    invoke-static {}, Lcom/platform/usercenter/tools/device/UCDeviceInfoUtil;->getAfterSaleRegion()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 645
    :cond_0
    const-string v1, "OC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 646
    const-string v0, "CN"

    .line 648
    :cond_1
    :goto_0
    return-object v0
.end method

.method public static getResolution(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 456
    if-eqz p0, :cond_1

    .line 460
    sget-object v0, Lcom/platform/usercenter/tools/device/UCDeviceInfoUtil;->sResolution:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 461
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 462
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "*"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/platform/usercenter/tools/device/UCDeviceInfoUtil;->sResolution:Ljava/lang/String;

    .line 464
    .end local v0    # "displayMetrics":Landroid/util/DisplayMetrics;
    :cond_0
    sget-object v0, Lcom/platform/usercenter/tools/device/UCDeviceInfoUtil;->sResolution:Ljava/lang/String;

    return-object v0

    .line 457
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "context is null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getRomBuildDisplay()Ljava/lang/String;
    .locals 3

    .line 687
    const-string v0, "ro.build.time.fix"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/platform/usercenter/tools/os/SystemPropertyUtils;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 688
    .local v0, "display":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 689
    const-string v1, "sys.build.display.full_id"

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/platform/usercenter/tools/os/SystemPropertyUtils;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 691
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 692
    const-string v1, "ro.build.display.id"

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/platform/usercenter/tools/os/SystemPropertyUtils;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 694
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 695
    const-string v1, "ro.build.display.id"

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/platform/usercenter/tools/os/SystemPropertyUtils;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 697
    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 698
    sget-object v0, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    .line 700
    :cond_3
    return-object v0
.end method

.method public static getRomBuildOtaVersion()Ljava/lang/String;
    .locals 2

    .line 346
    invoke-static {}, Lcom/platform/usercenter/basic/provider/UCSystemInfoXor8Provider;->buildOtaVersionSystemName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/platform/usercenter/tools/os/SystemPropertyUtils;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getRomMemoryTotalSize(Landroid/content/Context;)J
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 416
    if-eqz p0, :cond_0

    .line 422
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    .line 423
    .local v0, "dataFileDir":Ljava/io/File;
    invoke-static {v0, p0}, Lcom/platform/usercenter/tools/device/UCDeviceInfoUtil;->getMemoryInfo(Ljava/io/File;Landroid/content/Context;)J

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v1

    .line 424
    .end local v0    # "dataFileDir":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 425
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 428
    .end local v0    # "ex":Ljava/lang/Exception;
    const-wide/16 v0, 0x0

    return-wide v0

    .line 417
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "context is null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getRomProductName()Ljava/lang/String;
    .locals 2

    .line 355
    invoke-static {}, Lcom/platform/usercenter/basic/provider/UCSystemInfoXor8Provider;->productNameSystemName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/platform/usercenter/tools/os/SystemPropertyUtils;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSerialNum()Ljava/lang/String;
    .locals 2

    .line 468
    sget-boolean v0, Lcom/platform/usercenter/tools/os/UCRuntimeEnvironment;->sIsExp:Z

    if-eqz v0, :cond_0

    .line 469
    const-string v0, ""

    return-object v0

    .line 473
    :cond_0
    invoke-static {}, Lcom/platform/usercenter/tools/device/UCDeviceInfoUtil;->getSerialNumber()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x64

    invoke-static {v0, v1}, Lcom/platform/usercenter/tools/datastructure/StringUtil;->subString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSerialNumber()Ljava/lang/String;
    .locals 1

    .line 923
    :try_start_0
    invoke-static {}, Lcom/platform/usercenter/tools/os/Version;->hasO()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 924
    invoke-static {}, Landroid/os/Build;->getSerial()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 926
    :cond_0
    sget-object v0, Landroid/os/Build;->SERIAL:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 928
    :catch_0
    move-exception v0

    .line 931
    sget-object v0, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    return-object v0
.end method

.method public static getSimMCC(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 544
    if-eqz p0, :cond_1

    .line 548
    const-string v0, ""

    .line 550
    .local v0, "str":Ljava/lang/String;
    :try_start_0
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 551
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v1

    .line 552
    .local v1, "simOperator":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x5

    if-lt v2, v3, :cond_0

    .line 553
    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 557
    .end local v1    # "simOperator":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 555
    :catch_0
    move-exception v1

    .line 556
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/platform/usercenter/tools/log/UCLogUtil;->e(Ljava/lang/Exception;)V

    .line 558
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v0

    .line 545
    .end local v0    # "str":Ljava/lang/String;
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "context is null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getSimMNC(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 562
    if-eqz p0, :cond_1

    .line 566
    const-string v0, ""

    .line 568
    .local v0, "str":Ljava/lang/String;
    :try_start_0
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 569
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v1

    .line 570
    .local v1, "simOperator":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x5

    if-lt v2, v3, :cond_0

    .line 571
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 575
    .end local v1    # "simOperator":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 573
    :catch_0
    move-exception v1

    .line 574
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/platform/usercenter/tools/log/UCLogUtil;->e(Ljava/lang/Exception;)V

    .line 576
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v0

    .line 563
    .end local v0    # "str":Ljava/lang/String;
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "context is null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getValueEncoded(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "value"    # Ljava/lang/String;

    .line 827
    if-nez p0, :cond_0

    const-string v0, "0"

    return-object v0

    .line 828
    :cond_0
    const-string v0, "\n"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 829
    .local v0, "newValue":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    .local v2, "length":I
    :goto_0
    if-ge v1, v2, :cond_3

    .line 830
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 831
    .local v3, "c":C
    const/16 v4, 0x1f

    if-le v3, v4, :cond_1

    const/16 v4, 0x7f

    if-lt v3, v4, :cond_2

    .line 833
    :cond_1
    :try_start_0
    const-string v4, "UTF-8"

    invoke-static {v0, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .line 834
    :catch_0
    move-exception v4

    .line 835
    .local v4, "e":Ljava/io/UnsupportedEncodingException;
    invoke-static {v4}, Lcom/platform/usercenter/tools/log/UCLogUtil;->e(Ljava/lang/Exception;)V

    .line 829
    .end local v3    # "c":C
    .end local v4    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 839
    .end local v1    # "i":I
    .end local v2    # "length":I
    :cond_3
    return-object v0
.end method

.method public static getWifiSSID(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 801
    const-string v0, ""

    .line 803
    .local v0, "raw_ssid":Ljava/lang/String;
    :try_start_0
    const-string v1, "wifi"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 804
    .local v1, "wm":Landroid/net/wifi/WifiManager;
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    .line 805
    .local v2, "connectionInfo":Landroid/net/wifi/WifiInfo;
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    .line 808
    .end local v1    # "wm":Landroid/net/wifi/WifiManager;
    .end local v2    # "connectionInfo":Landroid/net/wifi/WifiInfo;
    goto :goto_0

    .line 806
    :catch_0
    move-exception v1

    .line 807
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/platform/usercenter/tools/log/UCLogUtil;->e(Ljava/lang/Exception;)V

    .line 809
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 810
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    const-string v1, "\""

    .line 811
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "\""

    .line 812
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 813
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 815
    :cond_0
    const/16 v1, 0x64

    invoke-static {v0, v1}, Lcom/platform/usercenter/tools/datastructure/StringUtil;->subString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static hasNfcFeature(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 953
    invoke-static {}, Lcom/platform/usercenter/tools/os/Version;->hasO()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.nfc"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isLargeScreenDevice(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 992
    invoke-static {}, Lcom/platform/usercenter/tools/os/Version;->hasR()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 993
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "oplus.feature.largescreen"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isOrange()Z
    .locals 3

    .line 780
    invoke-static {}, Lcom/platform/usercenter/basic/provider/UCCommonXor8Provider;->getBrandOrange()Ljava/lang/String;

    move-result-object v0

    .line 781
    .local v0, "brandOrange":Ljava/lang/String;
    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "ro.product.brand.sub"

    .line 783
    invoke-static {}, Lcom/platform/usercenter/basic/provider/UCCommonXor8Provider;->getBrandGreen()Ljava/lang/String;

    move-result-object v2

    .line 782
    invoke-static {v1, v2}, Lcom/platform/usercenter/tools/os/SystemPropertyUtils;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 786
    :cond_0
    const/4 v1, 0x0

    return v1

    .line 784
    :cond_1
    :goto_0
    const/4 v1, 0x1

    return v1
.end method

.method public static isRed(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 796
    invoke-static {}, Lcom/platform/usercenter/basic/provider/UCCommonXor8Provider;->getBrandRed()Ljava/lang/String;

    move-result-object v0

    .line 797
    .local v0, "brandRed":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {}, Lcom/platform/usercenter/basic/provider/UCSystemInfoXor8Provider;->getPropertyFeatureRedXor8()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "Kepler"

    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method public static isRoot()Z
    .locals 3

    .line 479
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v2, "/system/bin/su"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/io/File;

    const-string v2, "/system/xbin/su"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    .line 480
    :catch_0
    move-exception v1

    .line 481
    .local v1, "e":Ljava/lang/Exception;
    return v0
.end method

.method public static isSellmode(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 767
    if-nez p0, :cond_0

    .line 768
    const/4 v0, 0x0

    return v0

    .line 770
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {}, Lcom/platform/usercenter/basic/provider/UCSystemInfoXor8Provider;->getPropertySpecialversionSellmodeXor8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
