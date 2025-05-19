.class Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder$1;
.super Ljava/lang/Object;
.source "COUISecurityAlertDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder;

    .line 108
    iput-object p1, p0, Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder$1;->this$0:Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .line 111
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder$1;->this$0:Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder;

    invoke-static {v0}, Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder;->access$000(Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder;)Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog;

    move-result-object v0

    invoke-static {v0}, Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog;->access$100(Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog;)Lcom/coui/appcompat/dialog/app/COUIAlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder$1;->this$0:Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder;

    invoke-static {v0}, Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder;->access$000(Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder;)Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog;

    move-result-object v0

    invoke-static {v0}, Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog;->access$100(Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog;)Lcom/coui/appcompat/dialog/app/COUIAlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coui/appcompat/dialog/app/COUIAlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder$1;->this$0:Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder;

    invoke-static {v0}, Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder;->access$000(Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder;)Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog;

    move-result-object v0

    invoke-static {v0}, Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog;->access$300(Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog;)Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$OnSelectedListener;

    move-result-object v0

    const/4 v1, -0x2

    iget-object v2, p0, Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder$1;->this$0:Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder;

    invoke-static {v2}, Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder;->access$200(Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder;)Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$OnSelectedListener;->onSelected(IZ)V

    .line 116
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
