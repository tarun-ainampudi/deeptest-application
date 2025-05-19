.class Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder$3;
.super Ljava/lang/Object;
.source "COUISecurityAlertDialog.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder;->create()Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder;

.field final synthetic val$termsIndex:I

.field final synthetic val$termsLength:I


# direct methods
.method constructor <init>(Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder;II)V
    .locals 0
    .param p1, "this$0"    # Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder;

    .line 416
    iput-object p1, p0, Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder$3;->this$0:Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder;

    iput p2, p0, Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder$3;->val$termsIndex:I

    iput p3, p0, Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder$3;->val$termsLength:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 420
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 422
    .local v0, "action":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 423
    .local v1, "x":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 424
    .local v2, "y":F
    iget-object v3, p0, Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder$3;->this$0:Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder;

    invoke-static {v3}, Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder;->access$000(Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder;)Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog;

    move-result-object v3

    invoke-static {v3}, Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog;->access$600(Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v3

    .line 425
    .local v3, "position":I
    iget v4, p0, Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder$3;->val$termsIndex:I

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-le v3, v4, :cond_1

    iget v4, p0, Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder$3;->val$termsIndex:I

    iget v7, p0, Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder$3;->val$termsLength:I

    add-int/2addr v4, v7

    if-lt v3, v4, :cond_0

    goto :goto_0

    :cond_0
    move v4, v5

    goto :goto_1

    :cond_1
    :goto_0
    move v4, v6

    .line 426
    .local v4, "forbiddenUpdate":Z
    :goto_1
    const/4 v7, 0x3

    if-eq v0, v7, :cond_3

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    .line 428
    :pswitch_0
    if-eqz v4, :cond_2

    .line 429
    return v6

    .line 431
    :cond_2
    iget-object v7, p0, Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder$3;->this$0:Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder;

    invoke-static {v7}, Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder;->access$000(Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder;)Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog;

    move-result-object v7

    invoke-static {v7}, Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog;->access$600(Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setPressed(Z)V

    .line 432
    iget-object v6, p0, Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder$3;->this$0:Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder;

    invoke-static {v6}, Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder;->access$000(Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder;)Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog;

    move-result-object v6

    invoke-static {v6}, Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog;->access$600(Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->invalidate()V

    .line 433
    goto :goto_2

    .line 436
    :cond_3
    :pswitch_1
    iget-object v6, p0, Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder$3;->this$0:Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder;

    invoke-static {v6}, Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder;->access$000(Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder;)Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog;

    move-result-object v6

    invoke-static {v6}, Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog;->access$600(Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setPressed(Z)V

    .line 437
    iget-object v6, p0, Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder$3;->this$0:Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder;

    invoke-static {v6}, Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder;->access$000(Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder;)Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog;

    move-result-object v6

    invoke-static {v6}, Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog;->access$600(Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog;)Landroid/widget/TextView;

    move-result-object v6

    const-wide/16 v7, 0x46

    invoke-virtual {v6, v7, v8}, Landroid/widget/TextView;->postInvalidateDelayed(J)V

    .line 438
    nop

    .line 442
    :goto_2
    return v5

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
