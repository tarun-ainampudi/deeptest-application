.class Lcom/example/deeptesting/activity/ApplyActivity$4;
.super Ljava/lang/Object;
.source "ApplyActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/deeptesting/activity/ApplyActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/deeptesting/activity/ApplyActivity;


# direct methods
.method constructor <init>(Lcom/example/deeptesting/activity/ApplyActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/example/deeptesting/activity/ApplyActivity;

    .line 105
    iput-object p1, p0, Lcom/example/deeptesting/activity/ApplyActivity$4;->this$0:Lcom/example/deeptesting/activity/ApplyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 108
    iget-object v0, p0, Lcom/example/deeptesting/activity/ApplyActivity$4;->this$0:Lcom/example/deeptesting/activity/ApplyActivity;

    iget-object v1, p0, Lcom/example/deeptesting/activity/ApplyActivity$4;->this$0:Lcom/example/deeptesting/activity/ApplyActivity;

    invoke-static {v1}, Lcom/example/deeptesting/activity/ApplyActivity;->access$300(Lcom/example/deeptesting/activity/ApplyActivity;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/example/deeptesting/activity/ApplyActivity;->access$302(Lcom/example/deeptesting/activity/ApplyActivity;Z)Z

    .line 109
    iget-object v0, p0, Lcom/example/deeptesting/activity/ApplyActivity$4;->this$0:Lcom/example/deeptesting/activity/ApplyActivity;

    invoke-static {v0}, Lcom/example/deeptesting/activity/ApplyActivity;->access$400(Lcom/example/deeptesting/activity/ApplyActivity;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/example/deeptesting/activity/ApplyActivity$4;->this$0:Lcom/example/deeptesting/activity/ApplyActivity;

    invoke-static {v1}, Lcom/example/deeptesting/activity/ApplyActivity;->access$300(Lcom/example/deeptesting/activity/ApplyActivity;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 110
    return-void
.end method
