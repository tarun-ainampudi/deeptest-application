.class Lcom/coui/appcompat/widget/COUINumberPicker$PressedStateHelper;
.super Ljava/lang/Object;
.source "COUINumberPicker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/widget/COUINumberPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PressedStateHelper"
.end annotation


# static fields
.field public static final BUTTON_DECREMENT:I = 0x2

.field public static final BUTTON_INCREMENT:I = 0x1


# instance fields
.field private final MODE_PRESS:I

.field private final MODE_TAPPED:I

.field private mManagedButton:I

.field private mMode:I

.field final synthetic this$0:Lcom/coui/appcompat/widget/COUINumberPicker;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/widget/COUINumberPicker;)V
    .locals 1
    .param p1, "this$0"    # Lcom/coui/appcompat/widget/COUINumberPicker;

    .line 1725
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUINumberPicker$PressedStateHelper;->this$0:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1737
    const/4 v0, 0x1

    iput v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker$PressedStateHelper;->MODE_PRESS:I

    .line 1738
    const/4 v0, 0x2

    iput v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker$PressedStateHelper;->MODE_TAPPED:I

    return-void
.end method


# virtual methods
.method public buttonPressDelayed(I)V
    .locals 3
    .param p1, "button"    # I

    .line 1767
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUINumberPicker$PressedStateHelper;->cancel()V

    .line 1768
    const/4 v0, 0x1

    iput v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker$PressedStateHelper;->mMode:I

    .line 1769
    iput p1, p0, Lcom/coui/appcompat/widget/COUINumberPicker$PressedStateHelper;->mManagedButton:I

    .line 1770
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker$PressedStateHelper;->this$0:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Lcom/coui/appcompat/widget/COUINumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1771
    return-void
.end method

.method public buttonTapped(I)V
    .locals 1
    .param p1, "button"    # I

    .line 1779
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUINumberPicker$PressedStateHelper;->cancel()V

    .line 1780
    const/4 v0, 0x2

    iput v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker$PressedStateHelper;->mMode:I

    .line 1781
    iput p1, p0, Lcom/coui/appcompat/widget/COUINumberPicker$PressedStateHelper;->mManagedButton:I

    .line 1782
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker$PressedStateHelper;->this$0:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v0, p0}, Lcom/coui/appcompat/widget/COUINumberPicker;->post(Ljava/lang/Runnable;)Z

    .line 1783
    return-void
.end method

.method public cancel()V
    .locals 5

    .line 1747
    const/4 v0, 0x0

    iput v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker$PressedStateHelper;->mMode:I

    .line 1748
    iput v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker$PressedStateHelper;->mManagedButton:I

    .line 1749
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUINumberPicker$PressedStateHelper;->this$0:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v1, p0}, Lcom/coui/appcompat/widget/COUINumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1750
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUINumberPicker$PressedStateHelper;->this$0:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-static {v1}, Lcom/coui/appcompat/widget/COUINumberPicker;->access$100(Lcom/coui/appcompat/widget/COUINumberPicker;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1751
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUINumberPicker$PressedStateHelper;->this$0:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-static {v1, v0}, Lcom/coui/appcompat/widget/COUINumberPicker;->access$102(Lcom/coui/appcompat/widget/COUINumberPicker;Z)Z

    .line 1752
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUINumberPicker$PressedStateHelper;->this$0:Lcom/coui/appcompat/widget/COUINumberPicker;

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUINumberPicker$PressedStateHelper;->this$0:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-static {v2}, Lcom/coui/appcompat/widget/COUINumberPicker;->access$200(Lcom/coui/appcompat/widget/COUINumberPicker;)I

    move-result v2

    iget-object v3, p0, Lcom/coui/appcompat/widget/COUINumberPicker$PressedStateHelper;->this$0:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v3}, Lcom/coui/appcompat/widget/COUINumberPicker;->getRight()I

    move-result v3

    iget-object v4, p0, Lcom/coui/appcompat/widget/COUINumberPicker$PressedStateHelper;->this$0:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v4}, Lcom/coui/appcompat/widget/COUINumberPicker;->getBottom()I

    move-result v4

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/coui/appcompat/widget/COUINumberPicker;->invalidate(IIII)V

    .line 1754
    :cond_0
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUINumberPicker$PressedStateHelper;->this$0:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-static {v1, v0}, Lcom/coui/appcompat/widget/COUINumberPicker;->access$302(Lcom/coui/appcompat/widget/COUINumberPicker;Z)Z

    .line 1755
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUINumberPicker$PressedStateHelper;->this$0:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-static {v1}, Lcom/coui/appcompat/widget/COUINumberPicker;->access$300(Lcom/coui/appcompat/widget/COUINumberPicker;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1756
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUINumberPicker$PressedStateHelper;->this$0:Lcom/coui/appcompat/widget/COUINumberPicker;

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUINumberPicker$PressedStateHelper;->this$0:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v2}, Lcom/coui/appcompat/widget/COUINumberPicker;->getRight()I

    move-result v2

    iget-object v3, p0, Lcom/coui/appcompat/widget/COUINumberPicker$PressedStateHelper;->this$0:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-static {v3}, Lcom/coui/appcompat/widget/COUINumberPicker;->access$400(Lcom/coui/appcompat/widget/COUINumberPicker;)I

    move-result v3

    invoke-virtual {v1, v0, v0, v2, v3}, Lcom/coui/appcompat/widget/COUINumberPicker;->invalidate(IIII)V

    .line 1758
    :cond_1
    return-void
.end method

.method public run()V
    .locals 5

    .line 1787
    iget v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker$PressedStateHelper;->mMode:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    .line 1803
    :pswitch_0
    iget v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker$PressedStateHelper;->mManagedButton:I

    packed-switch v0, :pswitch_data_1

    goto/16 :goto_1

    .line 1814
    :pswitch_1
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker$PressedStateHelper;->this$0:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUINumberPicker;->access$300(Lcom/coui/appcompat/widget/COUINumberPicker;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1815
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker$PressedStateHelper;->this$0:Lcom/coui/appcompat/widget/COUINumberPicker;

    .line 1816
    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v3

    int-to-long v3, v3

    .line 1815
    invoke-virtual {v0, p0, v3, v4}, Lcom/coui/appcompat/widget/COUINumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1818
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker$PressedStateHelper;->this$0:Lcom/coui/appcompat/widget/COUINumberPicker;

    iget-object v3, p0, Lcom/coui/appcompat/widget/COUINumberPicker$PressedStateHelper;->this$0:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-static {v3}, Lcom/coui/appcompat/widget/COUINumberPicker;->access$300(Lcom/coui/appcompat/widget/COUINumberPicker;)Z

    move-result v3

    xor-int/2addr v1, v3

    invoke-static {v0, v1}, Lcom/coui/appcompat/widget/COUINumberPicker;->access$302(Lcom/coui/appcompat/widget/COUINumberPicker;Z)Z

    .line 1819
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker$PressedStateHelper;->this$0:Lcom/coui/appcompat/widget/COUINumberPicker;

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUINumberPicker$PressedStateHelper;->this$0:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v1}, Lcom/coui/appcompat/widget/COUINumberPicker;->getRight()I

    move-result v1

    iget-object v3, p0, Lcom/coui/appcompat/widget/COUINumberPicker$PressedStateHelper;->this$0:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-static {v3}, Lcom/coui/appcompat/widget/COUINumberPicker;->access$400(Lcom/coui/appcompat/widget/COUINumberPicker;)I

    move-result v3

    invoke-virtual {v0, v2, v2, v1, v3}, Lcom/coui/appcompat/widget/COUINumberPicker;->invalidate(IIII)V

    goto :goto_1

    .line 1805
    :pswitch_2
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker$PressedStateHelper;->this$0:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUINumberPicker;->access$100(Lcom/coui/appcompat/widget/COUINumberPicker;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1806
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker$PressedStateHelper;->this$0:Lcom/coui/appcompat/widget/COUINumberPicker;

    .line 1807
    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v3

    int-to-long v3, v3

    .line 1806
    invoke-virtual {v0, p0, v3, v4}, Lcom/coui/appcompat/widget/COUINumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1809
    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker$PressedStateHelper;->this$0:Lcom/coui/appcompat/widget/COUINumberPicker;

    iget-object v3, p0, Lcom/coui/appcompat/widget/COUINumberPicker$PressedStateHelper;->this$0:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-static {v3}, Lcom/coui/appcompat/widget/COUINumberPicker;->access$100(Lcom/coui/appcompat/widget/COUINumberPicker;)Z

    move-result v3

    xor-int/2addr v1, v3

    invoke-static {v0, v1}, Lcom/coui/appcompat/widget/COUINumberPicker;->access$102(Lcom/coui/appcompat/widget/COUINumberPicker;Z)Z

    .line 1810
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker$PressedStateHelper;->this$0:Lcom/coui/appcompat/widget/COUINumberPicker;

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUINumberPicker$PressedStateHelper;->this$0:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-static {v1}, Lcom/coui/appcompat/widget/COUINumberPicker;->access$200(Lcom/coui/appcompat/widget/COUINumberPicker;)I

    move-result v1

    iget-object v3, p0, Lcom/coui/appcompat/widget/COUINumberPicker$PressedStateHelper;->this$0:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v3}, Lcom/coui/appcompat/widget/COUINumberPicker;->getRight()I

    move-result v3

    iget-object v4, p0, Lcom/coui/appcompat/widget/COUINumberPicker$PressedStateHelper;->this$0:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v4}, Lcom/coui/appcompat/widget/COUINumberPicker;->getBottom()I

    move-result v4

    invoke-virtual {v0, v2, v1, v3, v4}, Lcom/coui/appcompat/widget/COUINumberPicker;->invalidate(IIII)V

    .line 1812
    goto :goto_1

    .line 1789
    :pswitch_3
    iget v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker$PressedStateHelper;->mManagedButton:I

    packed-switch v0, :pswitch_data_2

    goto :goto_0

    .line 1796
    :pswitch_4
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker$PressedStateHelper;->this$0:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-static {v0, v1}, Lcom/coui/appcompat/widget/COUINumberPicker;->access$302(Lcom/coui/appcompat/widget/COUINumberPicker;Z)Z

    .line 1797
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker$PressedStateHelper;->this$0:Lcom/coui/appcompat/widget/COUINumberPicker;

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUINumberPicker$PressedStateHelper;->this$0:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v1}, Lcom/coui/appcompat/widget/COUINumberPicker;->getRight()I

    move-result v1

    iget-object v3, p0, Lcom/coui/appcompat/widget/COUINumberPicker$PressedStateHelper;->this$0:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-static {v3}, Lcom/coui/appcompat/widget/COUINumberPicker;->access$400(Lcom/coui/appcompat/widget/COUINumberPicker;)I

    move-result v3

    invoke-virtual {v0, v2, v2, v1, v3}, Lcom/coui/appcompat/widget/COUINumberPicker;->invalidate(IIII)V

    goto :goto_0

    .line 1791
    :pswitch_5
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker$PressedStateHelper;->this$0:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-static {v0, v1}, Lcom/coui/appcompat/widget/COUINumberPicker;->access$102(Lcom/coui/appcompat/widget/COUINumberPicker;Z)Z

    .line 1792
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker$PressedStateHelper;->this$0:Lcom/coui/appcompat/widget/COUINumberPicker;

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUINumberPicker$PressedStateHelper;->this$0:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-static {v1}, Lcom/coui/appcompat/widget/COUINumberPicker;->access$200(Lcom/coui/appcompat/widget/COUINumberPicker;)I

    move-result v1

    iget-object v3, p0, Lcom/coui/appcompat/widget/COUINumberPicker$PressedStateHelper;->this$0:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v3}, Lcom/coui/appcompat/widget/COUINumberPicker;->getRight()I

    move-result v3

    iget-object v4, p0, Lcom/coui/appcompat/widget/COUINumberPicker$PressedStateHelper;->this$0:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v4}, Lcom/coui/appcompat/widget/COUINumberPicker;->getBottom()I

    move-result v4

    invoke-virtual {v0, v2, v1, v3, v4}, Lcom/coui/appcompat/widget/COUINumberPicker;->invalidate(IIII)V

    .line 1794
    nop

    .line 1801
    :goto_0
    nop

    .line 1825
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method
