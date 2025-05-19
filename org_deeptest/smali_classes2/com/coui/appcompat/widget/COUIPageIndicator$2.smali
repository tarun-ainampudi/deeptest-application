.class Lcom/coui/appcompat/widget/COUIPageIndicator$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "COUIPageIndicator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/widget/COUIPageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/widget/COUIPageIndicator;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/widget/COUIPageIndicator;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coui/appcompat/widget/COUIPageIndicator;

    .line 218
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUIPageIndicator$2;->this$0:Lcom/coui/appcompat/widget/COUIPageIndicator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 221
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 222
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIPageIndicator$2;->this$0:Lcom/coui/appcompat/widget/COUIPageIndicator;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUIPageIndicator;->access$000(Lcom/coui/appcompat/widget/COUIPageIndicator;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIPageIndicator$2;->this$0:Lcom/coui/appcompat/widget/COUIPageIndicator;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUIPageIndicator;->access$500(Lcom/coui/appcompat/widget/COUIPageIndicator;)Landroid/graphics/RectF;

    move-result-object v0

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIPageIndicator$2;->this$0:Lcom/coui/appcompat/widget/COUIPageIndicator;

    invoke-static {v2}, Lcom/coui/appcompat/widget/COUIPageIndicator;->access$500(Lcom/coui/appcompat/widget/COUIPageIndicator;)Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Lcom/coui/appcompat/widget/COUIPageIndicator$2;->this$0:Lcom/coui/appcompat/widget/COUIPageIndicator;

    invoke-static {v3}, Lcom/coui/appcompat/widget/COUIPageIndicator;->access$600(Lcom/coui/appcompat/widget/COUIPageIndicator;)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    iput v2, v0, Landroid/graphics/RectF;->right:F

    .line 224
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIPageIndicator$2;->this$0:Lcom/coui/appcompat/widget/COUIPageIndicator;

    invoke-static {v0, v1}, Lcom/coui/appcompat/widget/COUIPageIndicator;->access$702(Lcom/coui/appcompat/widget/COUIPageIndicator;Z)Z

    .line 225
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIPageIndicator$2;->this$0:Lcom/coui/appcompat/widget/COUIPageIndicator;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/coui/appcompat/widget/COUIPageIndicator;->access$902(Lcom/coui/appcompat/widget/COUIPageIndicator;Z)Z

    .line 226
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIPageIndicator$2;->this$0:Lcom/coui/appcompat/widget/COUIPageIndicator;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUIPageIndicator;->invalidate()V

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIPageIndicator$2;->this$0:Lcom/coui/appcompat/widget/COUIPageIndicator;

    invoke-static {v0, v1}, Lcom/coui/appcompat/widget/COUIPageIndicator;->access$1002(Lcom/coui/appcompat/widget/COUIPageIndicator;Z)Z

    .line 229
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 233
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 234
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIPageIndicator$2;->this$0:Lcom/coui/appcompat/widget/COUIPageIndicator;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/coui/appcompat/widget/COUIPageIndicator;->access$002(Lcom/coui/appcompat/widget/COUIPageIndicator;Z)Z

    .line 235
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIPageIndicator$2;->this$0:Lcom/coui/appcompat/widget/COUIPageIndicator;

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIPageIndicator$2;->this$0:Lcom/coui/appcompat/widget/COUIPageIndicator;

    invoke-static {v1}, Lcom/coui/appcompat/widget/COUIPageIndicator;->access$500(Lcom/coui/appcompat/widget/COUIPageIndicator;)Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->left:F

    invoke-static {v0, v1}, Lcom/coui/appcompat/widget/COUIPageIndicator;->access$102(Lcom/coui/appcompat/widget/COUIPageIndicator;F)F

    .line 236
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIPageIndicator$2;->this$0:Lcom/coui/appcompat/widget/COUIPageIndicator;

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIPageIndicator$2;->this$0:Lcom/coui/appcompat/widget/COUIPageIndicator;

    invoke-static {v1}, Lcom/coui/appcompat/widget/COUIPageIndicator;->access$500(Lcom/coui/appcompat/widget/COUIPageIndicator;)Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->right:F

    invoke-static {v0, v1}, Lcom/coui/appcompat/widget/COUIPageIndicator;->access$302(Lcom/coui/appcompat/widget/COUIPageIndicator;F)F

    .line 237
    return-void
.end method
