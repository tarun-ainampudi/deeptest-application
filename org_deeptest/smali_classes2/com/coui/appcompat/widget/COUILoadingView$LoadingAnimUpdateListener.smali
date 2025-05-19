.class Lcom/coui/appcompat/widget/COUILoadingView$LoadingAnimUpdateListener;
.super Ljava/lang/Object;
.source "COUILoadingView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/widget/COUILoadingView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LoadingAnimUpdateListener"
.end annotation


# instance fields
.field weakRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/coui/appcompat/widget/COUILoadingView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/widget/COUILoadingView;)V
    .locals 1
    .param p1, "parent"    # Lcom/coui/appcompat/widget/COUILoadingView;

    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 216
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUILoadingView$LoadingAnimUpdateListener;->weakRef:Ljava/lang/ref/WeakReference;

    .line 217
    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "valueAnimator"    # Landroid/animation/ValueAnimator;

    .line 221
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v0

    .line 222
    .local v0, "fraction":F
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUILoadingView$LoadingAnimUpdateListener;->weakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coui/appcompat/widget/COUILoadingView;

    .line 223
    .local v1, "loadingView":Lcom/coui/appcompat/widget/COUILoadingView;
    if-eqz v1, :cond_0

    .line 224
    invoke-virtual {v1}, Lcom/coui/appcompat/widget/COUILoadingView;->invalidate()V

    .line 226
    :cond_0
    return-void
.end method
