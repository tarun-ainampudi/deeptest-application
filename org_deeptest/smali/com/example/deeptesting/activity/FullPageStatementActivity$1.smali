.class Lcom/example/deeptesting/activity/FullPageStatementActivity$1;
.super Lcom/coui/appcompat/widget/COUIClickableSpan;
.source "FullPageStatementActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/deeptesting/activity/FullPageStatementActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/deeptesting/activity/FullPageStatementActivity;


# direct methods
.method constructor <init>(Lcom/example/deeptesting/activity/FullPageStatementActivity;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/example/deeptesting/activity/FullPageStatementActivity;
    .param p2, "arg0"    # Landroid/content/Context;

    .line 49
    iput-object p1, p0, Lcom/example/deeptesting/activity/FullPageStatementActivity$1;->this$0:Lcom/example/deeptesting/activity/FullPageStatementActivity;

    invoke-direct {p0, p2}, Lcom/coui/appcompat/widget/COUIClickableSpan;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "widget"    # Landroid/view/View;

    .line 52
    iget-object v0, p0, Lcom/example/deeptesting/activity/FullPageStatementActivity$1;->this$0:Lcom/example/deeptesting/activity/FullPageStatementActivity;

    invoke-static {v0}, Lcom/example/deeptesting/activity/FullPageStatementActivity;->access$000(Lcom/example/deeptesting/activity/FullPageStatementActivity;)V

    .line 53
    return-void
.end method
