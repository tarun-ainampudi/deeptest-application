.class Lcom/coui/appcompat/widget/COUIBaseSpinner$1;
.super Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow$ForwardingListener;
.source "COUIBaseSpinner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/widget/COUIBaseSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/widget/COUIBaseSpinner;

.field final synthetic val$popup:Lcom/coui/appcompat/widget/COUIBaseSpinner$DropdownPopup;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/widget/COUIBaseSpinner;Landroid/view/View;Lcom/coui/appcompat/widget/COUIBaseSpinner$DropdownPopup;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coui/appcompat/widget/COUIBaseSpinner;
    .param p2, "src"    # Landroid/view/View;

    .line 196
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUIBaseSpinner$1;->this$0:Lcom/coui/appcompat/widget/COUIBaseSpinner;

    iput-object p3, p0, Lcom/coui/appcompat/widget/COUIBaseSpinner$1;->val$popup:Lcom/coui/appcompat/widget/COUIBaseSpinner$DropdownPopup;

    invoke-direct {p0, p2}, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow$ForwardingListener;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public getPopup()Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIBaseSpinner$1;->val$popup:Lcom/coui/appcompat/widget/COUIBaseSpinner$DropdownPopup;

    return-object v0
.end method

.method public onForwardingStarted()Z
    .locals 3

    .line 204
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIBaseSpinner$1;->this$0:Lcom/coui/appcompat/widget/COUIBaseSpinner;

    iget-object v0, v0, Lcom/coui/appcompat/widget/COUIBaseSpinner;->mPopup:Lcom/coui/appcompat/widget/COUIBaseSpinner$SpinnerPopup;

    invoke-interface {v0}, Lcom/coui/appcompat/widget/COUIBaseSpinner$SpinnerPopup;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIBaseSpinner$1;->this$0:Lcom/coui/appcompat/widget/COUIBaseSpinner;

    iget-object v0, v0, Lcom/coui/appcompat/widget/COUIBaseSpinner;->mPopup:Lcom/coui/appcompat/widget/COUIBaseSpinner$SpinnerPopup;

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIBaseSpinner$1;->this$0:Lcom/coui/appcompat/widget/COUIBaseSpinner;

    invoke-virtual {v1}, Lcom/coui/appcompat/widget/COUIBaseSpinner;->getTextDirection()I

    move-result v1

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIBaseSpinner$1;->this$0:Lcom/coui/appcompat/widget/COUIBaseSpinner;

    invoke-static {v2}, Lcom/coui/appcompat/widget/COUIViewCompat;->getTextAlignment(Landroid/view/View;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/coui/appcompat/widget/COUIBaseSpinner$SpinnerPopup;->show(II)V

    .line 207
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
