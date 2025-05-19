.class Lcom/coui/appcompat/widget/COUIBaseSpinner$DropdownPopup$3;
.super Ljava/lang/Object;
.source "COUIBaseSpinner.java"

# interfaces
.implements Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/widget/COUIBaseSpinner$DropdownPopup;->show(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/coui/appcompat/widget/COUIBaseSpinner$DropdownPopup;

.field final synthetic val$layoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/widget/COUIBaseSpinner$DropdownPopup;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    .locals 0
    .param p1, "this$1"    # Lcom/coui/appcompat/widget/COUIBaseSpinner$DropdownPopup;

    .line 1111
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUIBaseSpinner$DropdownPopup$3;->this$1:Lcom/coui/appcompat/widget/COUIBaseSpinner$DropdownPopup;

    iput-object p2, p0, Lcom/coui/appcompat/widget/COUIBaseSpinner$DropdownPopup$3;->val$layoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    .line 1114
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIBaseSpinner$DropdownPopup$3;->this$1:Lcom/coui/appcompat/widget/COUIBaseSpinner$DropdownPopup;

    iget-object v0, v0, Lcom/coui/appcompat/widget/COUIBaseSpinner$DropdownPopup;->this$0:Lcom/coui/appcompat/widget/COUIBaseSpinner;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUIBaseSpinner;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 1115
    .local v0, "vto":Landroid/view/ViewTreeObserver;
    if-eqz v0, :cond_0

    .line 1116
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIBaseSpinner$DropdownPopup$3;->val$layoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 1118
    :cond_0
    return-void
.end method
