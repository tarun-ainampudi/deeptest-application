.class Lcom/example/deeptesting/activity/FullPageStatementActivity$2;
.super Ljava/lang/Object;
.source "FullPageStatementActivity.java"

# interfaces
.implements Lcom/coui/appcompat/widget/COUIFullPageStatement$OnButtonClickListener;


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
.method constructor <init>(Lcom/example/deeptesting/activity/FullPageStatementActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/example/deeptesting/activity/FullPageStatementActivity;

    .line 60
    iput-object p1, p0, Lcom/example/deeptesting/activity/FullPageStatementActivity$2;->this$0:Lcom/example/deeptesting/activity/FullPageStatementActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBottomButtonClick()V
    .locals 3

    .line 63
    iget-object v0, p0, Lcom/example/deeptesting/activity/FullPageStatementActivity$2;->this$0:Lcom/example/deeptesting/activity/FullPageStatementActivity;

    invoke-static {v0}, Lcom/example/deeptesting/activity/FullPageStatementActivity;->access$100(Lcom/example/deeptesting/activity/FullPageStatementActivity;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref.rom_update_filter_check_time_v3"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/example/deeptesting/utils/PreUtils;->setBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 64
    iget-object v0, p0, Lcom/example/deeptesting/activity/FullPageStatementActivity$2;->this$0:Lcom/example/deeptesting/activity/FullPageStatementActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/example/deeptesting/activity/FullPageStatementActivity;->setResult(I)V

    .line 65
    iget-object v0, p0, Lcom/example/deeptesting/activity/FullPageStatementActivity$2;->this$0:Lcom/example/deeptesting/activity/FullPageStatementActivity;

    invoke-virtual {v0}, Lcom/example/deeptesting/activity/FullPageStatementActivity;->finish()V

    .line 66
    return-void
.end method

.method public onExitButtonClick()V
    .locals 2

    .line 70
    iget-object v0, p0, Lcom/example/deeptesting/activity/FullPageStatementActivity$2;->this$0:Lcom/example/deeptesting/activity/FullPageStatementActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/example/deeptesting/activity/FullPageStatementActivity;->setResult(I)V

    .line 71
    iget-object v0, p0, Lcom/example/deeptesting/activity/FullPageStatementActivity$2;->this$0:Lcom/example/deeptesting/activity/FullPageStatementActivity;

    invoke-virtual {v0}, Lcom/example/deeptesting/activity/FullPageStatementActivity;->finish()V

    .line 72
    return-void
.end method
