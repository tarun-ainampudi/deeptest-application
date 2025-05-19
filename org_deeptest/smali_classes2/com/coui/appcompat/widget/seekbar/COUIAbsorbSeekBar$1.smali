.class Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar$1;
.super Ljava/lang/Object;
.source "COUIAbsorbSeekBar.java"

# interfaces
.implements Lcom/facebook/rebound/SpringListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->initAnimator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;

    .line 205
    iput-object p1, p0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar$1;->this$0:Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSpringActivate(Lcom/facebook/rebound/Spring;)V
    .locals 0
    .param p1, "spring"    # Lcom/facebook/rebound/Spring;

    .line 227
    return-void
.end method

.method public onSpringAtRest(Lcom/facebook/rebound/Spring;)V
    .locals 0
    .param p1, "spring"    # Lcom/facebook/rebound/Spring;

    .line 222
    return-void
.end method

.method public onSpringEndStateChange(Lcom/facebook/rebound/Spring;)V
    .locals 0
    .param p1, "spring"    # Lcom/facebook/rebound/Spring;

    .line 232
    return-void
.end method

.method public onSpringUpdate(Lcom/facebook/rebound/Spring;)V
    .locals 4
    .param p1, "spring"    # Lcom/facebook/rebound/Spring;

    .line 208
    iget-object v0, p0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar$1;->this$0:Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;

    invoke-static {v0}, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->access$000(Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;)F

    move-result v0

    float-to-double v0, v0

    invoke-virtual {p1}, Lcom/facebook/rebound/Spring;->getEndValue()D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_1

    .line 209
    iget-object v0, p0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar$1;->this$0:Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar$1;->this$0:Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;

    invoke-virtual {p1}, Lcom/facebook/rebound/Spring;->getCurrentValue()D

    move-result-wide v1

    double-to-float v1, v1

    invoke-static {v0, v1}, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->access$002(Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;F)F

    .line 211
    iget-object v0, p0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar$1;->this$0:Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->invalidate()V

    goto :goto_0

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar$1;->this$0:Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->access$002(Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;F)F

    .line 214
    iget-object v0, p0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar$1;->this$0:Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->invalidate()V

    .line 217
    :cond_1
    :goto_0
    return-void
.end method
