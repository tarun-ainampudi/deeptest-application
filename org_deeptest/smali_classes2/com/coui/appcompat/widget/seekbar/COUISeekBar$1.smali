.class Lcom/coui/appcompat/widget/seekbar/COUISeekBar$1;
.super Ljava/lang/Object;
.source "COUISeekBar.java"

# interfaces
.implements Lcom/facebook/rebound/SpringListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->initAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/widget/seekbar/COUISeekBar;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/widget/seekbar/COUISeekBar;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coui/appcompat/widget/seekbar/COUISeekBar;

    .line 256
    iput-object p1, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar$1;->this$0:Lcom/coui/appcompat/widget/seekbar/COUISeekBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSpringActivate(Lcom/facebook/rebound/Spring;)V
    .locals 0
    .param p1, "spring"    # Lcom/facebook/rebound/Spring;

    .line 273
    return-void
.end method

.method public onSpringAtRest(Lcom/facebook/rebound/Spring;)V
    .locals 0
    .param p1, "spring"    # Lcom/facebook/rebound/Spring;

    .line 268
    return-void
.end method

.method public onSpringEndStateChange(Lcom/facebook/rebound/Spring;)V
    .locals 0
    .param p1, "spring"    # Lcom/facebook/rebound/Spring;

    .line 278
    return-void
.end method

.method public onSpringUpdate(Lcom/facebook/rebound/Spring;)V
    .locals 4
    .param p1, "spring"    # Lcom/facebook/rebound/Spring;

    .line 259
    iget-object v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar$1;->this$0:Lcom/coui/appcompat/widget/seekbar/COUISeekBar;

    invoke-static {v0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->access$000(Lcom/coui/appcompat/widget/seekbar/COUISeekBar;)F

    move-result v0

    float-to-double v0, v0

    invoke-virtual {p1}, Lcom/facebook/rebound/Spring;->getEndValue()D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar$1;->this$0:Lcom/coui/appcompat/widget/seekbar/COUISeekBar;

    invoke-virtual {p1}, Lcom/facebook/rebound/Spring;->getCurrentValue()D

    move-result-wide v1

    double-to-float v1, v1

    invoke-static {v0, v1}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->access$002(Lcom/coui/appcompat/widget/seekbar/COUISeekBar;F)F

    .line 261
    iget-object v0, p0, Lcom/coui/appcompat/widget/seekbar/COUISeekBar$1;->this$0:Lcom/coui/appcompat/widget/seekbar/COUISeekBar;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/seekbar/COUISeekBar;->invalidate()V

    .line 263
    :cond_0
    return-void
.end method
