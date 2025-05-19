.class Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior$2;
.super Ljava/lang/Object;
.source "COUIGuideBehavior.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior;->createShapeValueAnimator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior;

    .line 1332
    .local p0, "this":Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior$2;, "Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior$2;"
    iput-object p1, p0, Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior$2;->this$0:Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1335
    .local p0, "this":Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior$2;, "Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior$2;"
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 1336
    .local v0, "value":F
    iget-object v1, p0, Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior$2;->this$0:Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior;

    invoke-static {v1}, Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior;->access$000(Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior;)Lcom/google/android/material/shape/MaterialShapeDrawable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1337
    iget-object v1, p0, Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior$2;->this$0:Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior;

    invoke-static {v1}, Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior;->access$000(Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior;)Lcom/google/android/material/shape/MaterialShapeDrawable;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setInterpolation(F)V

    .line 1339
    :cond_0
    return-void
.end method
