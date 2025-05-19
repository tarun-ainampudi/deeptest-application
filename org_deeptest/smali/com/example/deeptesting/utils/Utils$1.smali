.class Lcom/example/deeptesting/utils/Utils$1;
.super Ljava/lang/Object;
.source "Utils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/deeptesting/utils/Utils;->showDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$cancleable:Z

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/os/Handler;Landroid/content/Context;Z)V
    .locals 0

    .line 281
    iput-object p1, p0, Lcom/example/deeptesting/utils/Utils$1;->val$handler:Landroid/os/Handler;

    iput-object p2, p0, Lcom/example/deeptesting/utils/Utils$1;->val$context:Landroid/content/Context;

    iput-boolean p3, p0, Lcom/example/deeptesting/utils/Utils$1;->val$cancleable:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 283
    iget-object v0, p0, Lcom/example/deeptesting/utils/Utils$1;->val$handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/example/deeptesting/utils/Utils$1;->val$context:Landroid/content/Context;

    const/16 v1, 0x3ec

    iget-object v2, p0, Lcom/example/deeptesting/utils/Utils$1;->val$handler:Landroid/os/Handler;

    invoke-static {v0, v1, v2}, Lcom/example/deeptesting/utils/Utils;->requestService(Landroid/content/Context;ILandroid/os/Handler;)V

    .line 286
    :cond_0
    iget-boolean v0, p0, Lcom/example/deeptesting/utils/Utils$1;->val$cancleable:Z

    if-nez v0, :cond_1

    .line 287
    iget-object v0, p0, Lcom/example/deeptesting/utils/Utils$1;->val$context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 289
    :cond_1
    return-void
.end method
