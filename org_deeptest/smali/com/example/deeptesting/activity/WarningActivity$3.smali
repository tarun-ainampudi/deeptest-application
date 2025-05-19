.class Lcom/example/deeptesting/activity/WarningActivity$3;
.super Ljava/lang/Object;
.source "WarningActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/deeptesting/activity/WarningActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/deeptesting/activity/WarningActivity;


# direct methods
.method constructor <init>(Lcom/example/deeptesting/activity/WarningActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/example/deeptesting/activity/WarningActivity;

    .line 61
    iput-object p1, p0, Lcom/example/deeptesting/activity/WarningActivity$3;->this$0:Lcom/example/deeptesting/activity/WarningActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 64
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/example/deeptesting/activity/WarningActivity$3;->this$0:Lcom/example/deeptesting/activity/WarningActivity;

    const-class v2, Lcom/example/deeptesting/activity/ApplyActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 65
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/example/deeptesting/activity/WarningActivity$3;->this$0:Lcom/example/deeptesting/activity/WarningActivity;

    invoke-virtual {v1, v0}, Lcom/example/deeptesting/activity/WarningActivity;->startActivity(Landroid/content/Intent;)V

    .line 66
    return-void
.end method
