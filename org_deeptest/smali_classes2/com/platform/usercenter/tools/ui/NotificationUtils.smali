.class public Lcom/platform/usercenter/tools/ui/NotificationUtils;
.super Ljava/lang/Object;
.source "NotificationUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/platform/usercenter/tools/ui/NotificationUtils$ChannelConfig;,
        Lcom/platform/usercenter/tools/ui/NotificationUtils$Importance;,
        Lcom/platform/usercenter/tools/ui/NotificationUtils$Consumer;
    }
.end annotation


# static fields
.field public static final IMPORTANCE_DEFAULT:I = 0x3

.field public static final IMPORTANCE_HIGH:I = 0x4

.field public static final IMPORTANCE_LOW:I = 0x2

.field public static final IMPORTANCE_MIN:I = 0x1

.field public static final IMPORTANCE_NONE:I = 0x0

.field public static final IMPORTANCE_UNSPECIFIED:I = -0x3e8


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 180
    return-void
.end method

.method public static areNotificationsEnabled(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 57
    invoke-static {p0}, Landroidx/core/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroidx/core/app/NotificationManagerCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/core/app/NotificationManagerCompat;->areNotificationsEnabled()Z

    move-result v0

    return v0
.end method

.method public static cancel(I)V
    .locals 1
    .param p0, "id"    # I

    .line 138
    sget-object v0, Lcom/platform/usercenter/tools/UCBasicUtils;->sContext:Landroid/content/Context;

    invoke-static {v0}, Landroidx/core/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroidx/core/app/NotificationManagerCompat;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/core/app/NotificationManagerCompat;->cancel(I)V

    .line 139
    return-void
.end method

.method public static cancel(Ljava/lang/String;I)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "id"    # I

    .line 129
    sget-object v0, Lcom/platform/usercenter/tools/UCBasicUtils;->sContext:Landroid/content/Context;

    invoke-static {v0}, Landroidx/core/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroidx/core/app/NotificationManagerCompat;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroidx/core/app/NotificationManagerCompat;->cancel(Ljava/lang/String;I)V

    .line 130
    return-void
.end method

.method public static cancelAll(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 146
    invoke-static {p0}, Landroidx/core/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroidx/core/app/NotificationManagerCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/core/app/NotificationManagerCompat;->cancelAll()V

    .line 147
    return-void
.end method

.method private static invokePanels(Ljava/lang/String;)V
    .locals 4
    .param p0, "methodName"    # Ljava/lang/String;

    .line 170
    :try_start_0
    sget-object v0, Lcom/platform/usercenter/tools/UCBasicUtils;->sContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "statusbar"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 172
    .local v0, "service":Ljava/lang/Object;
    const-string v1, "android.app.StatusBarManager"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 173
    .local v1, "statusBarManager":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v1, p0, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 174
    .local v3, "expand":Ljava/lang/reflect/Method;
    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v3, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    .end local v0    # "service":Ljava/lang/Object;
    .end local v1    # "statusBarManager":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "expand":Ljava/lang/reflect/Method;
    goto :goto_0

    .line 175
    :catch_0
    move-exception v0

    .line 176
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 178
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public static notify(ILcom/platform/usercenter/tools/ui/NotificationUtils$ChannelConfig;Lcom/platform/usercenter/tools/ui/NotificationUtils$Consumer;)V
    .locals 1
    .param p0, "id"    # I
    .param p1, "channelConfig"    # Lcom/platform/usercenter/tools/ui/NotificationUtils$ChannelConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/platform/usercenter/tools/ui/NotificationUtils$ChannelConfig;",
            "Lcom/platform/usercenter/tools/ui/NotificationUtils$Consumer<",
            "Landroidx/core/app/NotificationCompat$Builder;",
            ">;)V"
        }
    .end annotation

    .line 93
    .local p2, "consumer":Lcom/platform/usercenter/tools/ui/NotificationUtils$Consumer;, "Lcom/platform/usercenter/tools/ui/NotificationUtils$Consumer<Landroidx/core/app/NotificationCompat$Builder;>;"
    const/4 v0, 0x0

    invoke-static {v0, p0, p1, p2}, Lcom/platform/usercenter/tools/ui/NotificationUtils;->notify(Ljava/lang/String;ILcom/platform/usercenter/tools/ui/NotificationUtils$ChannelConfig;Lcom/platform/usercenter/tools/ui/NotificationUtils$Consumer;)V

    .line 94
    return-void
.end method

.method public static notify(ILcom/platform/usercenter/tools/ui/NotificationUtils$Consumer;)V
    .locals 4
    .param p0, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/platform/usercenter/tools/ui/NotificationUtils$Consumer<",
            "Landroidx/core/app/NotificationCompat$Builder;",
            ">;)V"
        }
    .end annotation

    .line 67
    .local p1, "consumer":Lcom/platform/usercenter/tools/ui/NotificationUtils$Consumer;, "Lcom/platform/usercenter/tools/ui/NotificationUtils$Consumer<Landroidx/core/app/NotificationCompat$Builder;>;"
    new-instance v0, Lcom/platform/usercenter/tools/ui/NotificationUtils$ChannelConfig;

    sget-object v1, Lcom/platform/usercenter/tools/UCBasicUtils;->sContext:Landroid/content/Context;

    .line 68
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/platform/usercenter/tools/UCBasicUtils;->sContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Lcom/platform/usercenter/tools/ui/NotificationUtils$ChannelConfig;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 67
    const/4 v1, 0x0

    invoke-static {v1, p0, v0, p1}, Lcom/platform/usercenter/tools/ui/NotificationUtils;->notify(Ljava/lang/String;ILcom/platform/usercenter/tools/ui/NotificationUtils$ChannelConfig;Lcom/platform/usercenter/tools/ui/NotificationUtils$Consumer;)V

    .line 70
    return-void
.end method

.method public static notify(Ljava/lang/String;ILcom/platform/usercenter/tools/ui/NotificationUtils$ChannelConfig;Lcom/platform/usercenter/tools/ui/NotificationUtils$Consumer;)V
    .locals 4
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "id"    # I
    .param p2, "channelConfig"    # Lcom/platform/usercenter/tools/ui/NotificationUtils$ChannelConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lcom/platform/usercenter/tools/ui/NotificationUtils$ChannelConfig;",
            "Lcom/platform/usercenter/tools/ui/NotificationUtils$Consumer<",
            "Landroidx/core/app/NotificationCompat$Builder;",
            ">;)V"
        }
    .end annotation

    .line 105
    .local p3, "consumer":Lcom/platform/usercenter/tools/ui/NotificationUtils$Consumer;, "Lcom/platform/usercenter/tools/ui/NotificationUtils$Consumer<Landroidx/core/app/NotificationCompat$Builder;>;"
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 106
    sget-object v0, Lcom/platform/usercenter/tools/UCBasicUtils;->sContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v2, Lcom/platform/usercenter/tools/UCBasicUtils;->sContext:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 108
    .local v0, "nm":Landroid/app/NotificationManager;
    invoke-virtual {p2}, Lcom/platform/usercenter/tools/ui/NotificationUtils$ChannelConfig;->getNotificationChannel()Landroid/app/NotificationChannel;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 111
    .end local v0    # "nm":Landroid/app/NotificationManager;
    :cond_0
    sget-object v0, Lcom/platform/usercenter/tools/UCBasicUtils;->sContext:Landroid/content/Context;

    invoke-static {v0}, Landroidx/core/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroidx/core/app/NotificationManagerCompat;

    move-result-object v0

    .line 113
    .local v0, "nmc":Landroidx/core/app/NotificationManagerCompat;
    new-instance v2, Landroidx/core/app/NotificationCompat$Builder;

    sget-object v3, Lcom/platform/usercenter/tools/UCBasicUtils;->sContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 114
    .local v2, "builder":Landroidx/core/app/NotificationCompat$Builder;
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v1, :cond_1

    .line 115
    invoke-static {p2}, Lcom/platform/usercenter/tools/ui/NotificationUtils$ChannelConfig;->access$000(Lcom/platform/usercenter/tools/ui/NotificationUtils$ChannelConfig;)Landroid/app/NotificationChannel;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroidx/core/app/NotificationCompat$Builder;->setChannelId(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    .line 117
    :cond_1
    invoke-interface {p3, v2}, Lcom/platform/usercenter/tools/ui/NotificationUtils$Consumer;->accept(Ljava/lang/Object;)V

    .line 119
    invoke-virtual {v2}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v0, p0, p1, v1}, Landroidx/core/app/NotificationManagerCompat;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 120
    return-void
.end method

.method public static notify(Ljava/lang/String;ILcom/platform/usercenter/tools/ui/NotificationUtils$Consumer;)V
    .locals 4
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lcom/platform/usercenter/tools/ui/NotificationUtils$Consumer<",
            "Landroidx/core/app/NotificationCompat$Builder;",
            ">;)V"
        }
    .end annotation

    .line 80
    .local p2, "consumer":Lcom/platform/usercenter/tools/ui/NotificationUtils$Consumer;, "Lcom/platform/usercenter/tools/ui/NotificationUtils$Consumer<Landroidx/core/app/NotificationCompat$Builder;>;"
    new-instance v0, Lcom/platform/usercenter/tools/ui/NotificationUtils$ChannelConfig;

    sget-object v1, Lcom/platform/usercenter/tools/UCBasicUtils;->sContext:Landroid/content/Context;

    .line 81
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/platform/usercenter/tools/UCBasicUtils;->sContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Lcom/platform/usercenter/tools/ui/NotificationUtils$ChannelConfig;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 80
    invoke-static {p0, p1, v0, p2}, Lcom/platform/usercenter/tools/ui/NotificationUtils;->notify(Ljava/lang/String;ILcom/platform/usercenter/tools/ui/NotificationUtils$ChannelConfig;Lcom/platform/usercenter/tools/ui/NotificationUtils$Consumer;)V

    .line 83
    return-void
.end method

.method public static setNotificationBarVisibility(Z)V
    .locals 2
    .param p0, "isVisible"    # Z
    .annotation build Landroidx/annotation/RequiresPermission;
        value = "android.permission.EXPAND_STATUS_BAR"
    .end annotation

    .line 159
    const/16 v0, 0x10

    if-eqz p0, :cond_1

    .line 160
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v1, v0, :cond_0

    const-string v0, "expand"

    goto :goto_0

    :cond_0
    const-string v0, "expandNotificationsPanel"

    :goto_0
    goto :goto_1

    .line 162
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v1, v0, :cond_2

    const-string v0, "collapse"

    goto :goto_1

    :cond_2
    const-string v0, "collapsePanels"

    .line 164
    .local v0, "methodName":Ljava/lang/String;
    :goto_1
    invoke-static {v0}, Lcom/platform/usercenter/tools/ui/NotificationUtils;->invokePanels(Ljava/lang/String;)V

    .line 165
    return-void
.end method
