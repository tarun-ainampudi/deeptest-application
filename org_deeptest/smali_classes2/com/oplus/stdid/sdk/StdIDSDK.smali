.class public Lcom/oplus/stdid/sdk/StdIDSDK;
.super Ljava/lang/Object;
.source "StdIDSDK.java"


# static fields
.field public static hasInit:Z = false

.field public static isSupported:Z = false

.field public static stdIDVersion:Z = false


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clear(Landroid/content/Context;)V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/oplus/stdid/sdk/StdIDSDK;->stdIDVersion:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " 2007"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/stdid/sdk/a;->a(Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lcom/oplus/stdid/sdk/StdIDSDK;->envValid()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4
    sget-object v0, Lcom/oplus/stdid/sdk/b$b;->a:Lcom/oplus/stdid/sdk/b;

    .line 5
    invoke-static {p0}, Lcom/oplus/stdid/sdk/StdIDSDK;->getApplicationContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v2, v0, Lcom/oplus/stdid/sdk/b;->a:Lcom/oplus/stdid/a;

    if-eqz v2, :cond_0

    const-string v2, "2019"

    .line 7
    invoke-static {v2}, Lcom/oplus/stdid/sdk/a;->a(Ljava/lang/String;)V

    .line 8
    iget-object v2, v0, Lcom/oplus/stdid/sdk/b;->e:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 9
    iput-object v1, v0, Lcom/oplus/stdid/sdk/b;->a:Lcom/oplus/stdid/a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    :try_start_1
    const-string p0, "StdIDHelper"

    const-string v1, "1010"

    .line 10
    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_4

    :goto_1
    monitor-exit v0

    throw p0

    .line 11
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " 2007"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, La/a/a/b/d;->a(Ljava/lang/String;)V

    .line 12
    invoke-static {}, La/a/a/b/c;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 13
    sget-object v0, La/a/a/b/b$b;->a:La/a/a/b/b;

    .line 14
    invoke-static {p0}, La/a/a/b/c;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    monitor-enter v0

    .line 15
    :try_start_2
    iget-object v2, v0, La/a/a/b/b;->a:La/a/a/a;

    if-eqz v2, :cond_2

    const-string v2, "2019"

    .line 16
    invoke-static {v2}, La/a/a/b/d;->a(Ljava/lang/String;)V

    .line 17
    iget-object v2, v0, La/a/a/b/b;->e:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 18
    iput-object v1, v0, La/a/a/b/b;->a:La/a/a/a;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p0

    goto :goto_3

    :catch_1
    move-exception p0

    :try_start_3
    const-string p0, "IDHelper"

    const-string v1, "1010"

    .line 19
    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_2
    :goto_2
    monitor-exit v0

    goto :goto_4

    :goto_3
    monitor-exit v0

    throw p0

    :cond_3
    :goto_4
    return-void
.end method

.method public static envValid()Z
    .locals 3

    .line 1
    sget-boolean v0, Lcom/oplus/stdid/sdk/StdIDSDK;->hasInit:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "1001"

    const-string v2, "StdIDHelper"

    .line 2
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 3
    :cond_0
    sget-boolean v0, Lcom/oplus/stdid/sdk/StdIDSDK;->isSupported:Z

    if-nez v0, :cond_1

    const-string v0, "1002"

    const-string v2, "StdIDHelper"

    .line 4
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 5
    :cond_1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v0, v2, :cond_2

    const-string v0, "1003"

    const-string v2, "StdIDHelper"

    .line 6
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public static getAPID(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 1
    sget-boolean v0, Lcom/oplus/stdid/sdk/StdIDSDK;->stdIDVersion:Z

    if-eqz v0, :cond_1

    const-string v0, "2006"

    .line 2
    invoke-static {v0}, Lcom/oplus/stdid/sdk/a;->a(Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lcom/oplus/stdid/sdk/StdIDSDK;->envValid()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, ""

    return-object p0

    .line 4
    :cond_0
    sget-object v0, Lcom/oplus/stdid/sdk/b$b;->a:Lcom/oplus/stdid/sdk/b;

    .line 5
    invoke-static {p0}, Lcom/oplus/stdid/sdk/StdIDSDK;->getApplicationContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    const-string v1, "APID"

    invoke-virtual {v0, p0, v1}, Lcom/oplus/stdid/sdk/b;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const-string v0, "2006"

    .line 6
    invoke-static {v0}, La/a/a/b/d;->a(Ljava/lang/String;)V

    .line 7
    invoke-static {}, La/a/a/b/c;->a()Z

    move-result v0

    if-nez v0, :cond_2

    const-string p0, ""

    goto :goto_0

    .line 8
    :cond_2
    sget-object v0, La/a/a/b/b$b;->a:La/a/a/b/b;

    .line 9
    invoke-static {p0}, La/a/a/b/c;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    const-string v1, "APID"

    invoke-virtual {v0, p0, v1}, La/a/a/b/b;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static getAUID(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 1
    sget-boolean v0, Lcom/oplus/stdid/sdk/StdIDSDK;->stdIDVersion:Z

    if-eqz v0, :cond_1

    const-string v0, "2005"

    .line 2
    invoke-static {v0}, Lcom/oplus/stdid/sdk/a;->a(Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lcom/oplus/stdid/sdk/StdIDSDK;->envValid()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, ""

    return-object p0

    .line 4
    :cond_0
    sget-object v0, Lcom/oplus/stdid/sdk/b$b;->a:Lcom/oplus/stdid/sdk/b;

    .line 5
    invoke-static {p0}, Lcom/oplus/stdid/sdk/StdIDSDK;->getApplicationContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    const-string v1, "AUID"

    invoke-virtual {v0, p0, v1}, Lcom/oplus/stdid/sdk/b;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const-string v0, "2005"

    .line 6
    invoke-static {v0}, La/a/a/b/d;->a(Ljava/lang/String;)V

    .line 7
    invoke-static {}, La/a/a/b/c;->a()Z

    move-result v0

    if-nez v0, :cond_2

    const-string p0, ""

    goto :goto_0

    .line 8
    :cond_2
    sget-object v0, La/a/a/b/b$b;->a:La/a/a/b/b;

    .line 9
    invoke-static {p0}, La/a/a/b/c;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    const-string v1, "AUID"

    invoke-virtual {v0, p0, v1}, La/a/a/b/b;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static getApplicationContext(Landroid/content/Context;)Landroid/content/Context;
    .locals 1

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static getDUID(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 1
    sget-boolean v0, Lcom/oplus/stdid/sdk/StdIDSDK;->stdIDVersion:Z

    if-eqz v0, :cond_1

    const-string v0, "2004"

    .line 2
    invoke-static {v0}, Lcom/oplus/stdid/sdk/a;->a(Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lcom/oplus/stdid/sdk/StdIDSDK;->envValid()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, ""

    return-object p0

    .line 4
    :cond_0
    sget-object v0, Lcom/oplus/stdid/sdk/b$b;->a:Lcom/oplus/stdid/sdk/b;

    .line 5
    invoke-static {p0}, Lcom/oplus/stdid/sdk/StdIDSDK;->getApplicationContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    const-string v1, "DUID"

    invoke-virtual {v0, p0, v1}, Lcom/oplus/stdid/sdk/b;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const-string v0, "2004"

    .line 6
    invoke-static {v0}, La/a/a/b/d;->a(Ljava/lang/String;)V

    .line 7
    invoke-static {}, La/a/a/b/c;->a()Z

    move-result v0

    if-nez v0, :cond_2

    const-string p0, ""

    goto :goto_0

    .line 8
    :cond_2
    sget-object v0, La/a/a/b/b$b;->a:La/a/a/b/b;

    .line 9
    invoke-static {p0}, La/a/a/b/c;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    const-string v1, "DUID"

    invoke-virtual {v0, p0, v1}, La/a/a/b/b;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static getGUID(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 1
    sget-boolean v0, Lcom/oplus/stdid/sdk/StdIDSDK;->stdIDVersion:Z

    if-eqz v0, :cond_1

    const-string v0, "2001"

    .line 2
    invoke-static {v0}, Lcom/oplus/stdid/sdk/a;->a(Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lcom/oplus/stdid/sdk/StdIDSDK;->envValid()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, ""

    return-object p0

    .line 4
    :cond_0
    sget-object v0, Lcom/oplus/stdid/sdk/b$b;->a:Lcom/oplus/stdid/sdk/b;

    .line 5
    invoke-static {p0}, Lcom/oplus/stdid/sdk/StdIDSDK;->getApplicationContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    const-string v1, "GUID"

    invoke-virtual {v0, p0, v1}, Lcom/oplus/stdid/sdk/b;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const-string v0, "2001"

    .line 6
    invoke-static {v0}, La/a/a/b/d;->a(Ljava/lang/String;)V

    .line 7
    invoke-static {}, La/a/a/b/c;->a()Z

    move-result v0

    if-nez v0, :cond_2

    const-string p0, ""

    goto :goto_0

    .line 8
    :cond_2
    sget-object v0, La/a/a/b/b$b;->a:La/a/a/b/b;

    .line 9
    invoke-static {p0}, La/a/a/b/c;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    const-string v1, "GUID"

    invoke-virtual {v0, p0, v1}, La/a/a/b/b;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static getOUID(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 1
    sget-boolean v0, Lcom/oplus/stdid/sdk/StdIDSDK;->stdIDVersion:Z

    if-eqz v0, :cond_0

    const-string p0, "2003"

    .line 2
    invoke-static {p0}, Lcom/oplus/stdid/sdk/a;->a(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "2003"

    .line 3
    invoke-static {v0}, La/a/a/b/d;->a(Ljava/lang/String;)V

    .line 4
    invoke-static {}, La/a/a/b/c;->a()Z

    move-result v0

    if-nez v0, :cond_1

    const-string p0, ""

    goto :goto_0

    .line 5
    :cond_1
    sget-object v0, La/a/a/b/b$b;->a:La/a/a/b/b;

    .line 6
    invoke-static {p0}, La/a/a/b/c;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    const-string v1, "OUID"

    invoke-virtual {v0, p0, v1}, La/a/a/b/b;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static getOUIDStatus(Landroid/content/Context;)Z
    .locals 2

    .line 1
    sget-boolean v0, Lcom/oplus/stdid/sdk/StdIDSDK;->stdIDVersion:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string p0, "2002"

    .line 2
    invoke-static {p0}, Lcom/oplus/stdid/sdk/a;->a(Ljava/lang/String;)V

    return v1

    :cond_0
    const-string v0, "2002"

    .line 3
    invoke-static {v0}, La/a/a/b/d;->a(Ljava/lang/String;)V

    .line 4
    invoke-static {}, La/a/a/b/c;->a()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    sget-object v0, La/a/a/b/b$b;->a:La/a/a/b/b;

    .line 6
    invoke-static {p0}, La/a/a/b/c;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    const-string v1, "OUID_STATUS"

    invoke-virtual {v0, p0, v1}, La/a/a/b/b;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "TRUE"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    :goto_0
    return v1
.end method

.method public static getSDKVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "1.0.1"

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 5

    .line 1
    sget-object v0, La/a/a/b/b$b;->a:La/a/a/b/b;

    .line 2
    invoke-static {p0}, La/a/a/b/c;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "2008"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Y29tLmhleXRhcC5vcGVuaWQ="

    invoke-static {v3}, La/a/a/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, La/a/a/b/d;->a(Ljava/lang/String;)V

    .line 5
    const/4 v0, 0x0

    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v4, "Y29tLmhleXRhcC5vcGVuaWQ="

    invoke-static {v4}, La/a/a/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 6
    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-lt v1, v3, :cond_0

    .line 7
    move v1, v3

    goto :goto_0

    .line 6
    :catch_0
    move-exception v1

    .line 7
    :cond_0
    move v1, v0

    :goto_0
    sput-boolean v1, La/a/a/b/c;->b:Z

    .line 8
    sput-boolean v3, La/a/a/b/c;->a:Z

    .line 9
    sget-boolean v1, La/a/a/b/c;->b:Z

    if-eqz v1, :cond_1

    .line 10
    sput-boolean v0, Lcom/oplus/stdid/sdk/StdIDSDK;->stdIDVersion:Z

    goto :goto_2

    .line 11
    :cond_1
    sget-object v1, Lcom/oplus/stdid/sdk/b$b;->a:Lcom/oplus/stdid/sdk/b;

    .line 12
    invoke-static {p0}, Lcom/oplus/stdid/sdk/StdIDSDK;->getApplicationContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    if-eqz v1, :cond_4

    const-string v1, "2008"

    .line 13
    invoke-static {v1}, Lcom/oplus/stdid/sdk/a;->a(Ljava/lang/String;)V

    .line 15
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v1, "com.oplus.stdid"

    invoke-virtual {p0, v1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 16
    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    if-lt p0, v3, :cond_2

    .line 17
    move v0, v3

    goto :goto_1

    .line 16
    :catch_1
    move-exception p0

    .line 17
    :cond_2
    :goto_1
    sput-boolean v0, Lcom/oplus/stdid/sdk/StdIDSDK;->isSupported:Z

    .line 18
    sput-boolean v3, Lcom/oplus/stdid/sdk/StdIDSDK;->hasInit:Z

    if-eqz v0, :cond_3

    .line 20
    sput-boolean v3, Lcom/oplus/stdid/sdk/StdIDSDK;->stdIDVersion:Z

    :cond_3
    :goto_2
    return-void

    .line 21
    :cond_4
    throw v2

    .line 22
    :cond_5
    throw v2
.end method

.method public static isSupported()Z
    .locals 2

    .line 1
    sget-boolean v0, Lcom/oplus/stdid/sdk/StdIDSDK;->stdIDVersion:Z

    if-eqz v0, :cond_1

    .line 2
    sget-boolean v0, Lcom/oplus/stdid/sdk/StdIDSDK;->hasInit:Z

    if-nez v0, :cond_0

    const-string v0, "StdIDHelper"

    const-string v1, "1001"

    .line 3
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    :cond_0
    sget-boolean v0, Lcom/oplus/stdid/sdk/StdIDSDK;->isSupported:Z

    return v0

    .line 5
    :cond_1
    sget-boolean v0, La/a/a/b/c;->a:Z

    if-nez v0, :cond_2

    const-string v0, "IDHelper"

    const-string v1, "1001"

    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    :cond_2
    sget-boolean v0, La/a/a/b/c;->b:Z

    return v0
.end method

.method public static setLoggable(Z)V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/oplus/stdid/sdk/StdIDSDK;->stdIDVersion:Z

    if-eqz v0, :cond_1

    .line 2
    invoke-static {}, Lcom/oplus/stdid/sdk/StdIDSDK;->envValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    sput-boolean p0, Lcom/oplus/stdid/sdk/a;->a:Z

    goto :goto_0

    .line 4
    :cond_1
    invoke-static {}, La/a/a/b/c;->a()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 5
    :cond_2
    sput-boolean p0, La/a/a/b/d;->a:Z

    :goto_0
    return-void
.end method
