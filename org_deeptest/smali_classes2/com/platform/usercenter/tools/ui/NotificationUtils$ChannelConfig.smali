.class public Lcom/platform/usercenter/tools/ui/NotificationUtils$ChannelConfig;
.super Ljava/lang/Object;
.source "NotificationUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/platform/usercenter/tools/ui/NotificationUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChannelConfig"
.end annotation


# instance fields
.field private mNotificationChannel:Landroid/app/NotificationChannel;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/CharSequence;
    .param p3, "importance"    # I

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 185
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 186
    new-instance v0, Landroid/app/NotificationChannel;

    invoke-direct {v0, p1, p2, p3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    iput-object v0, p0, Lcom/platform/usercenter/tools/ui/NotificationUtils$ChannelConfig;->mNotificationChannel:Landroid/app/NotificationChannel;

    .line 188
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/platform/usercenter/tools/ui/NotificationUtils$ChannelConfig;)Landroid/app/NotificationChannel;
    .locals 1
    .param p0, "x0"    # Lcom/platform/usercenter/tools/ui/NotificationUtils$ChannelConfig;

    .line 180
    iget-object v0, p0, Lcom/platform/usercenter/tools/ui/NotificationUtils$ChannelConfig;->mNotificationChannel:Landroid/app/NotificationChannel;

    return-object v0
.end method


# virtual methods
.method public getNotificationChannel()Landroid/app/NotificationChannel;
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/platform/usercenter/tools/ui/NotificationUtils$ChannelConfig;->mNotificationChannel:Landroid/app/NotificationChannel;

    return-object v0
.end method

.method public setBypassDnd(Z)Lcom/platform/usercenter/tools/ui/NotificationUtils$ChannelConfig;
    .locals 2
    .param p1, "bypassDnd"    # Z

    .line 201
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 202
    iget-object v0, p0, Lcom/platform/usercenter/tools/ui/NotificationUtils$ChannelConfig;->mNotificationChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v0, p1}, Landroid/app/NotificationChannel;->setBypassDnd(Z)V

    .line 204
    :cond_0
    return-object p0
.end method

.method public setDescription(Ljava/lang/String;)Lcom/platform/usercenter/tools/ui/NotificationUtils$ChannelConfig;
    .locals 2
    .param p1, "description"    # Ljava/lang/String;

    .line 214
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 215
    iget-object v0, p0, Lcom/platform/usercenter/tools/ui/NotificationUtils$ChannelConfig;->mNotificationChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v0, p1}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    .line 217
    :cond_0
    return-object p0
.end method

.method public setGroup(Ljava/lang/String;)Lcom/platform/usercenter/tools/ui/NotificationUtils$ChannelConfig;
    .locals 2
    .param p1, "groupId"    # Ljava/lang/String;

    .line 233
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 234
    iget-object v0, p0, Lcom/platform/usercenter/tools/ui/NotificationUtils$ChannelConfig;->mNotificationChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v0, p1}, Landroid/app/NotificationChannel;->setGroup(Ljava/lang/String;)V

    .line 236
    :cond_0
    return-object p0
.end method

.method public setImportance(I)Lcom/platform/usercenter/tools/ui/NotificationUtils$ChannelConfig;
    .locals 2
    .param p1, "importance"    # I

    .line 249
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 250
    iget-object v0, p0, Lcom/platform/usercenter/tools/ui/NotificationUtils$ChannelConfig;->mNotificationChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v0, p1}, Landroid/app/NotificationChannel;->setImportance(I)V

    .line 252
    :cond_0
    return-object p0
.end method

.method public setLightColor(I)Lcom/platform/usercenter/tools/ui/NotificationUtils$ChannelConfig;
    .locals 2
    .param p1, "argb"    # I

    .line 263
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 264
    iget-object v0, p0, Lcom/platform/usercenter/tools/ui/NotificationUtils$ChannelConfig;->mNotificationChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v0, p1}, Landroid/app/NotificationChannel;->setLightColor(I)V

    .line 266
    :cond_0
    return-object p0
.end method

.method public setLockscreenVisibility(I)Lcom/platform/usercenter/tools/ui/NotificationUtils$ChannelConfig;
    .locals 2
    .param p1, "lockscreenVisibility"    # I

    .line 276
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 277
    iget-object v0, p0, Lcom/platform/usercenter/tools/ui/NotificationUtils$ChannelConfig;->mNotificationChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v0, p1}, Landroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    .line 279
    :cond_0
    return-object p0
.end method

.method public setName(Ljava/lang/CharSequence;)Lcom/platform/usercenter/tools/ui/NotificationUtils$ChannelConfig;
    .locals 2
    .param p1, "name"    # Ljava/lang/CharSequence;

    .line 289
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 290
    iget-object v0, p0, Lcom/platform/usercenter/tools/ui/NotificationUtils$ChannelConfig;->mNotificationChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v0, p1}, Landroid/app/NotificationChannel;->setName(Ljava/lang/CharSequence;)V

    .line 292
    :cond_0
    return-object p0
.end method

.method public setShowBadge(Z)Lcom/platform/usercenter/tools/ui/NotificationUtils$ChannelConfig;
    .locals 2
    .param p1, "showBadge"    # Z

    .line 305
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 306
    iget-object v0, p0, Lcom/platform/usercenter/tools/ui/NotificationUtils$ChannelConfig;->mNotificationChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v0, p1}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    .line 308
    :cond_0
    return-object p0
.end method

.method public setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)Lcom/platform/usercenter/tools/ui/NotificationUtils$ChannelConfig;
    .locals 2
    .param p1, "sound"    # Landroid/net/Uri;
    .param p2, "audioAttributes"    # Landroid/media/AudioAttributes;

    .line 320
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 321
    iget-object v0, p0, Lcom/platform/usercenter/tools/ui/NotificationUtils$ChannelConfig;->mNotificationChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v0, p1, p2}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    .line 323
    :cond_0
    return-object p0
.end method

.method public setVibrationPattern([J)Lcom/platform/usercenter/tools/ui/NotificationUtils$ChannelConfig;
    .locals 2
    .param p1, "vibrationPattern"    # [J

    .line 335
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 336
    iget-object v0, p0, Lcom/platform/usercenter/tools/ui/NotificationUtils$ChannelConfig;->mNotificationChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v0, p1}, Landroid/app/NotificationChannel;->setVibrationPattern([J)V

    .line 338
    :cond_0
    return-object p0
.end method
