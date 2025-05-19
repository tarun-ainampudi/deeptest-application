.class public Lcom/platform/usercenter/tools/ui/CustomToast;
.super Landroid/widget/Toast;
.source "CustomToast.java"


# static fields
.field private static mToast:Lcom/platform/usercenter/tools/ui/CustomToast;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 11
    invoke-direct {p0, p1}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 12
    return-void
.end method

.method public static cancelToast()V
    .locals 1

    .line 15
    sget-object v0, Lcom/platform/usercenter/tools/ui/CustomToast;->mToast:Lcom/platform/usercenter/tools/ui/CustomToast;

    if-eqz v0, :cond_0

    .line 16
    sget-object v0, Lcom/platform/usercenter/tools/ui/CustomToast;->mToast:Lcom/platform/usercenter/tools/ui/CustomToast;

    invoke-virtual {v0}, Lcom/platform/usercenter/tools/ui/CustomToast;->cancel()V

    .line 17
    const/4 v0, 0x0

    sput-object v0, Lcom/platform/usercenter/tools/ui/CustomToast;->mToast:Lcom/platform/usercenter/tools/ui/CustomToast;

    .line 19
    :cond_0
    return-void
.end method

.method public static showHttpErrorToast(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "gravity"    # I
    .param p2, "errorMsg"    # Ljava/lang/String;
    .param p3, "code"    # Ljava/lang/String;

    .line 57
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 58
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p2, v1}, Lcom/platform/usercenter/tools/ui/CustomToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 59
    .local v0, "toast":Landroid/widget/Toast;
    invoke-virtual {v0, p1, v1, v1}, Landroid/widget/Toast;->setGravity(III)V

    .line 60
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 62
    .end local v0    # "toast":Landroid/widget/Toast;
    :cond_0
    return-void
.end method

.method public static showHttpErrorToast(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "errorMsg"    # Ljava/lang/String;
    .param p2, "code"    # Ljava/lang/String;

    .line 34
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 35
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/platform/usercenter/tools/ui/CustomToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 37
    :cond_0
    return-void
.end method

.method public static showToast(Landroid/content/Context;I)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "strid"    # I

    .line 22
    if-lez p1, :cond_0

    .line 23
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/platform/usercenter/tools/ui/CustomToast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 25
    :cond_0
    return-void
.end method

.method public static showToast(Landroid/content/Context;II)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "gravity"    # I
    .param p2, "strid"    # I

    .line 40
    if-lez p2, :cond_0

    .line 41
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p2, v1}, Lcom/platform/usercenter/tools/ui/CustomToast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 42
    .local v0, "toast":Landroid/widget/Toast;
    invoke-virtual {v0, p1, v1, v1}, Landroid/widget/Toast;->setGravity(III)V

    .line 43
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 45
    .end local v0    # "toast":Landroid/widget/Toast;
    :cond_0
    return-void
.end method

.method public static showToast(Landroid/content/Context;ILjava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "gravity"    # I
    .param p2, "text"    # Ljava/lang/String;

    .line 48
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 49
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p2, v1}, Lcom/platform/usercenter/tools/ui/CustomToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 50
    .local v0, "toast":Landroid/widget/Toast;
    invoke-virtual {v0, p1, v1, v1}, Landroid/widget/Toast;->setGravity(III)V

    .line 51
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 53
    .end local v0    # "toast":Landroid/widget/Toast;
    :cond_0
    return-void
.end method

.method public static showToast(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "text"    # Ljava/lang/String;

    .line 28
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 29
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/platform/usercenter/tools/ui/CustomToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 31
    :cond_0
    return-void
.end method
