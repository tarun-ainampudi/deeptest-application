.class Lcom/coui/appcompat/widget/COUIBaseSpinner$2;
.super Ljava/lang/Object;
.source "COUIBaseSpinner.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/widget/COUIBaseSpinner;->onRestoreInstanceState(Landroid/os/Parcelable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/widget/COUIBaseSpinner;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/widget/COUIBaseSpinner;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coui/appcompat/widget/COUIBaseSpinner;

    .line 708
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUIBaseSpinner$2;->this$0:Lcom/coui/appcompat/widget/COUIBaseSpinner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    .line 711
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIBaseSpinner$2;->this$0:Lcom/coui/appcompat/widget/COUIBaseSpinner;

    iget-object v0, v0, Lcom/coui/appcompat/widget/COUIBaseSpinner;->mPopup:Lcom/coui/appcompat/widget/COUIBaseSpinner$SpinnerPopup;

    invoke-interface {v0}, Lcom/coui/appcompat/widget/COUIBaseSpinner$SpinnerPopup;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 712
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIBaseSpinner$2;->this$0:Lcom/coui/appcompat/widget/COUIBaseSpinner;

    iget-object v0, v0, Lcom/coui/appcompat/widget/COUIBaseSpinner;->mPopup:Lcom/coui/appcompat/widget/COUIBaseSpinner$SpinnerPopup;

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIBaseSpinner$2;->this$0:Lcom/coui/appcompat/widget/COUIBaseSpinner;

    invoke-virtual {v1}, Lcom/coui/appcompat/widget/COUIBaseSpinner;->getTextDirection()I

    move-result v1

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIBaseSpinner$2;->this$0:Lcom/coui/appcompat/widget/COUIBaseSpinner;

    invoke-static {v2}, Lcom/coui/appcompat/widget/COUIViewCompat;->getTextAlignment(Landroid/view/View;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/coui/appcompat/widget/COUIBaseSpinner$SpinnerPopup;->show(II)V

    .line 714
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIBaseSpinner$2;->this$0:Lcom/coui/appcompat/widget/COUIBaseSpinner;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUIBaseSpinner;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 715
    .local v0, "vto":Landroid/view/ViewTreeObserver;
    if-eqz v0, :cond_1

    .line 716
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 718
    :cond_1
    return-void
.end method
