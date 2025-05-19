.class Lcom/facebook/rebound/ui/SpringConfiguratorView$RevealerSpringListener;
.super Ljava/lang/Object;
.source "SpringConfiguratorView.java"

# interfaces
.implements Lcom/facebook/rebound/SpringListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/rebound/ui/SpringConfiguratorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RevealerSpringListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/rebound/ui/SpringConfiguratorView;


# direct methods
.method private constructor <init>(Lcom/facebook/rebound/ui/SpringConfiguratorView;)V
    .locals 0

    .line 336
    iput-object p1, p0, Lcom/facebook/rebound/ui/SpringConfiguratorView$RevealerSpringListener;->this$0:Lcom/facebook/rebound/ui/SpringConfiguratorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/rebound/ui/SpringConfiguratorView;Lcom/facebook/rebound/ui/SpringConfiguratorView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/facebook/rebound/ui/SpringConfiguratorView;
    .param p2, "x1"    # Lcom/facebook/rebound/ui/SpringConfiguratorView$1;

    .line 336
    invoke-direct {p0, p1}, Lcom/facebook/rebound/ui/SpringConfiguratorView$RevealerSpringListener;-><init>(Lcom/facebook/rebound/ui/SpringConfiguratorView;)V

    return-void
.end method


# virtual methods
.method public onSpringActivate(Lcom/facebook/rebound/Spring;)V
    .locals 0
    .param p1, "spring"    # Lcom/facebook/rebound/Spring;

    .line 354
    return-void
.end method

.method public onSpringAtRest(Lcom/facebook/rebound/Spring;)V
    .locals 0
    .param p1, "spring"    # Lcom/facebook/rebound/Spring;

    .line 350
    return-void
.end method

.method public onSpringEndStateChange(Lcom/facebook/rebound/Spring;)V
    .locals 0
    .param p1, "spring"    # Lcom/facebook/rebound/Spring;

    .line 358
    return-void
.end method

.method public onSpringUpdate(Lcom/facebook/rebound/Spring;)V
    .locals 6
    .param p1, "spring"    # Lcom/facebook/rebound/Spring;

    .line 340
    invoke-virtual {p1}, Lcom/facebook/rebound/Spring;->getCurrentValue()D

    move-result-wide v0

    double-to-float v0, v0

    .line 341
    .local v0, "val":F
    iget-object v1, p0, Lcom/facebook/rebound/ui/SpringConfiguratorView$RevealerSpringListener;->this$0:Lcom/facebook/rebound/ui/SpringConfiguratorView;

    invoke-static {v1}, Lcom/facebook/rebound/ui/SpringConfiguratorView;->access$1300(Lcom/facebook/rebound/ui/SpringConfiguratorView;)F

    move-result v1

    .line 342
    .local v1, "minTranslate":F
    iget-object v2, p0, Lcom/facebook/rebound/ui/SpringConfiguratorView$RevealerSpringListener;->this$0:Lcom/facebook/rebound/ui/SpringConfiguratorView;

    invoke-static {v2}, Lcom/facebook/rebound/ui/SpringConfiguratorView;->access$1400(Lcom/facebook/rebound/ui/SpringConfiguratorView;)F

    move-result v2

    .line 343
    .local v2, "maxTranslate":F
    sub-float v3, v2, v1

    .line 344
    .local v3, "range":F
    mul-float v4, v0, v3

    add-float/2addr v4, v1

    .line 345
    .local v4, "yTranslate":F
    iget-object v5, p0, Lcom/facebook/rebound/ui/SpringConfiguratorView$RevealerSpringListener;->this$0:Lcom/facebook/rebound/ui/SpringConfiguratorView;

    invoke-virtual {v5, v4}, Lcom/facebook/rebound/ui/SpringConfiguratorView;->setTranslationY(F)V

    .line 346
    return-void
.end method
