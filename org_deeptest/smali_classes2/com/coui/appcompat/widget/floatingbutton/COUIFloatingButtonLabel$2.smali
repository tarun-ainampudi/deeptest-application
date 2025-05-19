.class Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel$2;
.super Ljava/lang/Object;
.source "COUIFloatingButtonLabel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;->setOnActionSelectedListener(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$OnActionSelectedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;

    .line 259
    iput-object p1, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel$2;->this$0:Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 262
    iget-object v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel$2;->this$0:Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;->getFloatingButtonItem()Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem;

    move-result-object v0

    .line 263
    .local v0, "COUIFloatingButtonItem":Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem;
    iget-object v1, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel$2;->this$0:Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;

    invoke-static {v1}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;->access$100(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;)Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$OnActionSelectedListener;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 265
    iget-object v1, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel$2;->this$0:Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;

    invoke-static {v1}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;->access$100(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;)Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$OnActionSelectedListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$OnActionSelectedListener;->onActionSelected(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem;)Z

    .line 267
    :cond_0
    return-void
.end method
