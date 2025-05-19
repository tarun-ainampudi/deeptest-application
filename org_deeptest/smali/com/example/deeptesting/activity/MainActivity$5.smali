.class Lcom/example/deeptesting/activity/MainActivity$5;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/deeptesting/activity/MainActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/deeptesting/activity/MainActivity;


# direct methods
.method constructor <init>(Lcom/example/deeptesting/activity/MainActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/example/deeptesting/activity/MainActivity;

    .line 335
    iput-object p1, p0, Lcom/example/deeptesting/activity/MainActivity$5;->this$0:Lcom/example/deeptesting/activity/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .line 338
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/example/deeptesting/activity/MainActivity$5;->this$0:Lcom/example/deeptesting/activity/MainActivity;

    invoke-static {v1}, Lcom/example/deeptesting/activity/MainActivity;->access$600(Lcom/example/deeptesting/activity/MainActivity;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/example/deeptesting/activity/SettingActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 339
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/example/deeptesting/activity/MainActivity$5;->this$0:Lcom/example/deeptesting/activity/MainActivity;

    invoke-virtual {v1, v0}, Lcom/example/deeptesting/activity/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 340
    return-void
.end method
