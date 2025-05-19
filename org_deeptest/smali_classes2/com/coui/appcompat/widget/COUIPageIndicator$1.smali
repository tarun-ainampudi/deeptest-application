.class Lcom/coui/appcompat/widget/COUIPageIndicator$1;
.super Ljava/lang/Object;
.source "COUIPageIndicator.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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

    .line 189
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUIPageIndicator$1;->this$0:Lcom/coui/appcompat/widget/COUIPageIndicator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 7
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 192
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 193
    .local v0, "value":F
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIPageIndicator$1;->this$0:Lcom/coui/appcompat/widget/COUIPageIndicator;

    invoke-static {v1}, Lcom/coui/appcompat/widget/COUIPageIndicator;->access$000(Lcom/coui/appcompat/widget/COUIPageIndicator;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 194
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIPageIndicator$1;->this$0:Lcom/coui/appcompat/widget/COUIPageIndicator;

    invoke-static {v1}, Lcom/coui/appcompat/widget/COUIPageIndicator;->access$100(Lcom/coui/appcompat/widget/COUIPageIndicator;)F

    move-result v1

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIPageIndicator$1;->this$0:Lcom/coui/appcompat/widget/COUIPageIndicator;

    invoke-static {v2}, Lcom/coui/appcompat/widget/COUIPageIndicator;->access$200(Lcom/coui/appcompat/widget/COUIPageIndicator;)F

    move-result v2

    sub-float/2addr v1, v2

    .line 195
    .local v1, "diffLeft":F
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIPageIndicator$1;->this$0:Lcom/coui/appcompat/widget/COUIPageIndicator;

    invoke-static {v2}, Lcom/coui/appcompat/widget/COUIPageIndicator;->access$300(Lcom/coui/appcompat/widget/COUIPageIndicator;)F

    move-result v2

    iget-object v3, p0, Lcom/coui/appcompat/widget/COUIPageIndicator$1;->this$0:Lcom/coui/appcompat/widget/COUIPageIndicator;

    invoke-static {v3}, Lcom/coui/appcompat/widget/COUIPageIndicator;->access$400(Lcom/coui/appcompat/widget/COUIPageIndicator;)F

    move-result v3

    sub-float/2addr v2, v3

    .line 196
    .local v2, "diffRight":F
    iget-object v3, p0, Lcom/coui/appcompat/widget/COUIPageIndicator$1;->this$0:Lcom/coui/appcompat/widget/COUIPageIndicator;

    invoke-static {v3}, Lcom/coui/appcompat/widget/COUIPageIndicator;->access$100(Lcom/coui/appcompat/widget/COUIPageIndicator;)F

    move-result v3

    mul-float v4, v1, v0

    sub-float/2addr v3, v4

    .line 197
    .local v3, "left":F
    iget-object v4, p0, Lcom/coui/appcompat/widget/COUIPageIndicator$1;->this$0:Lcom/coui/appcompat/widget/COUIPageIndicator;

    invoke-static {v4}, Lcom/coui/appcompat/widget/COUIPageIndicator;->access$500(Lcom/coui/appcompat/widget/COUIPageIndicator;)Landroid/graphics/RectF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/RectF;->right:F

    iget-object v5, p0, Lcom/coui/appcompat/widget/COUIPageIndicator$1;->this$0:Lcom/coui/appcompat/widget/COUIPageIndicator;

    invoke-static {v5}, Lcom/coui/appcompat/widget/COUIPageIndicator;->access$600(Lcom/coui/appcompat/widget/COUIPageIndicator;)I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v4, v5

    cmpl-float v4, v3, v4

    if-lez v4, :cond_0

    .line 198
    iget-object v4, p0, Lcom/coui/appcompat/widget/COUIPageIndicator$1;->this$0:Lcom/coui/appcompat/widget/COUIPageIndicator;

    invoke-static {v4}, Lcom/coui/appcompat/widget/COUIPageIndicator;->access$500(Lcom/coui/appcompat/widget/COUIPageIndicator;)Landroid/graphics/RectF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/RectF;->right:F

    iget-object v5, p0, Lcom/coui/appcompat/widget/COUIPageIndicator$1;->this$0:Lcom/coui/appcompat/widget/COUIPageIndicator;

    invoke-static {v5}, Lcom/coui/appcompat/widget/COUIPageIndicator;->access$600(Lcom/coui/appcompat/widget/COUIPageIndicator;)I

    move-result v5

    int-to-float v5, v5

    sub-float v3, v4, v5

    .line 200
    :cond_0
    iget-object v4, p0, Lcom/coui/appcompat/widget/COUIPageIndicator$1;->this$0:Lcom/coui/appcompat/widget/COUIPageIndicator;

    invoke-static {v4}, Lcom/coui/appcompat/widget/COUIPageIndicator;->access$300(Lcom/coui/appcompat/widget/COUIPageIndicator;)F

    move-result v4

    mul-float v5, v2, v0

    sub-float/2addr v4, v5

    .line 201
    .local v4, "right":F
    iget-object v5, p0, Lcom/coui/appcompat/widget/COUIPageIndicator$1;->this$0:Lcom/coui/appcompat/widget/COUIPageIndicator;

    invoke-static {v5}, Lcom/coui/appcompat/widget/COUIPageIndicator;->access$500(Lcom/coui/appcompat/widget/COUIPageIndicator;)Landroid/graphics/RectF;

    move-result-object v5

    iget v5, v5, Landroid/graphics/RectF;->left:F

    iget-object v6, p0, Lcom/coui/appcompat/widget/COUIPageIndicator$1;->this$0:Lcom/coui/appcompat/widget/COUIPageIndicator;

    invoke-static {v6}, Lcom/coui/appcompat/widget/COUIPageIndicator;->access$600(Lcom/coui/appcompat/widget/COUIPageIndicator;)I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    cmpg-float v5, v4, v5

    if-gez v5, :cond_1

    .line 202
    iget-object v5, p0, Lcom/coui/appcompat/widget/COUIPageIndicator$1;->this$0:Lcom/coui/appcompat/widget/COUIPageIndicator;

    invoke-static {v5}, Lcom/coui/appcompat/widget/COUIPageIndicator;->access$500(Lcom/coui/appcompat/widget/COUIPageIndicator;)Landroid/graphics/RectF;

    move-result-object v5

    iget v5, v5, Landroid/graphics/RectF;->left:F

    iget-object v6, p0, Lcom/coui/appcompat/widget/COUIPageIndicator$1;->this$0:Lcom/coui/appcompat/widget/COUIPageIndicator;

    invoke-static {v6}, Lcom/coui/appcompat/widget/COUIPageIndicator;->access$600(Lcom/coui/appcompat/widget/COUIPageIndicator;)I

    move-result v6

    int-to-float v6, v6

    add-float v4, v5, v6

    .line 204
    :cond_1
    iget-object v5, p0, Lcom/coui/appcompat/widget/COUIPageIndicator$1;->this$0:Lcom/coui/appcompat/widget/COUIPageIndicator;

    invoke-static {v5}, Lcom/coui/appcompat/widget/COUIPageIndicator;->access$700(Lcom/coui/appcompat/widget/COUIPageIndicator;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 205
    iget-object v5, p0, Lcom/coui/appcompat/widget/COUIPageIndicator$1;->this$0:Lcom/coui/appcompat/widget/COUIPageIndicator;

    invoke-static {v5}, Lcom/coui/appcompat/widget/COUIPageIndicator;->access$800(Lcom/coui/appcompat/widget/COUIPageIndicator;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 206
    iget-object v5, p0, Lcom/coui/appcompat/widget/COUIPageIndicator$1;->this$0:Lcom/coui/appcompat/widget/COUIPageIndicator;

    invoke-static {v5}, Lcom/coui/appcompat/widget/COUIPageIndicator;->access$500(Lcom/coui/appcompat/widget/COUIPageIndicator;)Landroid/graphics/RectF;

    move-result-object v5

    iput v4, v5, Landroid/graphics/RectF;->right:F

    goto :goto_0

    .line 208
    :cond_2
    iget-object v5, p0, Lcom/coui/appcompat/widget/COUIPageIndicator$1;->this$0:Lcom/coui/appcompat/widget/COUIPageIndicator;

    invoke-static {v5}, Lcom/coui/appcompat/widget/COUIPageIndicator;->access$500(Lcom/coui/appcompat/widget/COUIPageIndicator;)Landroid/graphics/RectF;

    move-result-object v5

    iput v3, v5, Landroid/graphics/RectF;->left:F

    goto :goto_0

    .line 211
    :cond_3
    iget-object v5, p0, Lcom/coui/appcompat/widget/COUIPageIndicator$1;->this$0:Lcom/coui/appcompat/widget/COUIPageIndicator;

    invoke-static {v5}, Lcom/coui/appcompat/widget/COUIPageIndicator;->access$500(Lcom/coui/appcompat/widget/COUIPageIndicator;)Landroid/graphics/RectF;

    move-result-object v5

    iput v3, v5, Landroid/graphics/RectF;->left:F

    .line 212
    iget-object v5, p0, Lcom/coui/appcompat/widget/COUIPageIndicator$1;->this$0:Lcom/coui/appcompat/widget/COUIPageIndicator;

    invoke-static {v5}, Lcom/coui/appcompat/widget/COUIPageIndicator;->access$500(Lcom/coui/appcompat/widget/COUIPageIndicator;)Landroid/graphics/RectF;

    move-result-object v5

    iput v4, v5, Landroid/graphics/RectF;->right:F

    .line 214
    :goto_0
    iget-object v5, p0, Lcom/coui/appcompat/widget/COUIPageIndicator$1;->this$0:Lcom/coui/appcompat/widget/COUIPageIndicator;

    invoke-virtual {v5}, Lcom/coui/appcompat/widget/COUIPageIndicator;->invalidate()V

    .line 216
    .end local v1    # "diffLeft":F
    .end local v2    # "diffRight":F
    .end local v3    # "left":F
    .end local v4    # "right":F
    :cond_4
    return-void
.end method
