.class Lcom/coui/appcompat/widget/COUIBaseSpinner$DropdownPopup$2;
.super Ljava/lang/Object;
.source "COUIBaseSpinner.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


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


# direct methods
.method constructor <init>(Lcom/coui/appcompat/widget/COUIBaseSpinner$DropdownPopup;)V
    .locals 0
    .param p1, "this$1"    # Lcom/coui/appcompat/widget/COUIBaseSpinner$DropdownPopup;

    .line 1096
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUIBaseSpinner$DropdownPopup$2;->this$1:Lcom/coui/appcompat/widget/COUIBaseSpinner$DropdownPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 1

    .line 1099
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIBaseSpinner$DropdownPopup$2;->this$1:Lcom/coui/appcompat/widget/COUIBaseSpinner$DropdownPopup;

    iget-object v0, v0, Lcom/coui/appcompat/widget/COUIBaseSpinner$DropdownPopup;->this$0:Lcom/coui/appcompat/widget/COUIBaseSpinner;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUIViewCompat;->isVisibleToUser(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1100
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIBaseSpinner$DropdownPopup$2;->this$1:Lcom/coui/appcompat/widget/COUIBaseSpinner$DropdownPopup;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUIBaseSpinner$DropdownPopup;->dismiss()V

    goto :goto_0

    .line 1102
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIBaseSpinner$DropdownPopup$2;->this$1:Lcom/coui/appcompat/widget/COUIBaseSpinner$DropdownPopup;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUIBaseSpinner$DropdownPopup;->computeContentWidth()V

    .line 1106
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIBaseSpinner$DropdownPopup$2;->this$1:Lcom/coui/appcompat/widget/COUIBaseSpinner$DropdownPopup;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUIBaseSpinner$DropdownPopup;->access$301(Lcom/coui/appcompat/widget/COUIBaseSpinner$DropdownPopup;)V

    .line 1108
    :goto_0
    return-void
.end method
