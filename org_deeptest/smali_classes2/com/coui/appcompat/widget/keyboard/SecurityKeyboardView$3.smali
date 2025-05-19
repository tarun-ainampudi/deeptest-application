.class Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView$3;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SecurityKeyboardView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->initGestureDetector()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;

    .line 607
    iput-object p1, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView$3;->this$0:Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 17
    .param p1, "me1"    # Landroid/view/MotionEvent;
    .param p2, "me2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .line 611
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView$3;->this$0:Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;

    invoke-static {v1}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->access$500(Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    .line 612
    :cond_0
    invoke-static/range {p3 .. p3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 613
    .local v1, "absX":F
    invoke-static/range {p4 .. p4}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 614
    .local v3, "absY":F
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    sub-float/2addr v4, v5

    .line 615
    .local v4, "deltaX":F
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    sub-float/2addr v5, v6

    .line 616
    .local v5, "deltaY":F
    iget-object v6, v0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView$3;->this$0:Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;

    invoke-virtual {v6}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    .line 617
    .local v6, "travelX":I
    iget-object v7, v0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView$3;->this$0:Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;

    invoke-virtual {v7}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->getHeight()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    .line 618
    .local v7, "travelY":I
    iget-object v8, v0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView$3;->this$0:Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;

    invoke-static {v8}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->access$600(Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;)Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView$SwipeTracker;

    move-result-object v8

    const/16 v9, 0x3e8

    invoke-virtual {v8, v9}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView$SwipeTracker;->computeCurrentVelocity(I)V

    .line 619
    iget-object v8, v0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView$3;->this$0:Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;

    invoke-static {v8}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->access$600(Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;)Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView$SwipeTracker;

    move-result-object v8

    invoke-virtual {v8}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView$SwipeTracker;->getXVelocity()F

    move-result v8

    .line 620
    .local v8, "endingVelocityX":F
    iget-object v9, v0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView$3;->this$0:Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;

    invoke-static {v9}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->access$600(Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;)Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView$SwipeTracker;

    move-result-object v9

    invoke-virtual {v9}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView$SwipeTracker;->getYVelocity()F

    move-result v9

    .line 621
    .local v9, "endingVelocityY":F
    const/4 v10, 0x0

    .line 622
    .local v10, "sendDownKey":Z
    iget-object v11, v0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView$3;->this$0:Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;

    invoke-static {v11}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->access$700(Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;)I

    move-result v11

    int-to-float v11, v11

    cmpl-float v11, p3, v11

    const/4 v12, 0x1

    const/high16 v13, 0x40800000    # 4.0f

    if-lez v11, :cond_2

    cmpg-float v11, v3, v1

    if-gez v11, :cond_2

    int-to-float v11, v6

    cmpl-float v11, v4, v11

    if-lez v11, :cond_2

    .line 623
    iget-object v11, v0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView$3;->this$0:Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;

    invoke-static {v11}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->access$800(Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;)Z

    move-result v11

    if-eqz v11, :cond_1

    div-float v11, p3, v13

    cmpg-float v11, v8, v11

    if-gez v11, :cond_1

    .line 624
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 626
    :cond_1
    iget-object v2, v0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView$3;->this$0:Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;

    invoke-virtual {v2}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->swipeRight()V

    .line 627
    return v12

    .line 629
    :cond_2
    iget-object v11, v0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView$3;->this$0:Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;

    invoke-static {v11}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->access$700(Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;)I

    move-result v11

    neg-int v11, v11

    int-to-float v11, v11

    cmpg-float v11, p3, v11

    if-gez v11, :cond_4

    cmpg-float v11, v3, v1

    if-gez v11, :cond_4

    neg-int v11, v6

    int-to-float v11, v11

    cmpg-float v11, v4, v11

    if-gez v11, :cond_4

    .line 630
    iget-object v11, v0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView$3;->this$0:Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;

    invoke-static {v11}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->access$800(Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;)Z

    move-result v11

    if-eqz v11, :cond_3

    div-float v11, p3, v13

    cmpl-float v11, v8, v11

    if-lez v11, :cond_3

    .line 631
    const/4 v10, 0x1

    goto :goto_0

    .line 633
    :cond_3
    iget-object v2, v0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView$3;->this$0:Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;

    invoke-virtual {v2}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->swipeLeft()V

    .line 634
    return v12

    .line 636
    :cond_4
    iget-object v11, v0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView$3;->this$0:Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;

    invoke-static {v11}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->access$700(Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;)I

    move-result v11

    neg-int v11, v11

    int-to-float v11, v11

    cmpg-float v11, p4, v11

    if-gez v11, :cond_6

    cmpg-float v11, v1, v3

    if-gez v11, :cond_6

    neg-int v11, v7

    int-to-float v11, v11

    cmpg-float v11, v5, v11

    if-gez v11, :cond_6

    .line 637
    iget-object v11, v0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView$3;->this$0:Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;

    invoke-static {v11}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->access$800(Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;)Z

    move-result v11

    if-eqz v11, :cond_5

    div-float v11, p4, v13

    cmpl-float v11, v9, v11

    if-lez v11, :cond_5

    .line 638
    const/4 v10, 0x1

    goto :goto_0

    .line 640
    :cond_5
    iget-object v2, v0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView$3;->this$0:Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;

    invoke-virtual {v2}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->swipeUp()V

    .line 641
    return v12

    .line 643
    :cond_6
    iget-object v11, v0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView$3;->this$0:Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;

    invoke-static {v11}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->access$700(Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;)I

    move-result v11

    int-to-float v11, v11

    cmpl-float v11, p4, v11

    if-lez v11, :cond_8

    const/high16 v11, 0x40000000    # 2.0f

    div-float v11, v3, v11

    cmpg-float v11, v1, v11

    if-gez v11, :cond_8

    int-to-float v11, v7

    cmpl-float v11, v5, v11

    if-lez v11, :cond_8

    .line 644
    iget-object v11, v0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView$3;->this$0:Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;

    invoke-static {v11}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->access$800(Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;)Z

    move-result v11

    if-eqz v11, :cond_7

    div-float v11, p4, v13

    cmpg-float v11, v9, v11

    if-gez v11, :cond_7

    .line 645
    const/4 v10, 0x1

    goto :goto_0

    .line 647
    :cond_7
    iget-object v2, v0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView$3;->this$0:Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;

    invoke-virtual {v2}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->swipeDown()V

    .line 648
    return v12

    .line 652
    :cond_8
    :goto_0
    if-eqz v10, :cond_9

    .line 653
    iget-object v11, v0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView$3;->this$0:Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;

    iget-object v12, v0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView$3;->this$0:Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;

    invoke-static {v12}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->access$900(Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;)I

    move-result v12

    iget-object v13, v0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView$3;->this$0:Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;

    invoke-static {v13}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->access$1000(Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;)I

    move-result v13

    iget-object v2, v0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView$3;->this$0:Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;

    invoke-static {v2}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->access$1100(Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;)I

    move-result v14

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v15

    invoke-static/range {v11 .. v16}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->access$1200(Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;IIIJ)V

    .line 655
    :cond_9
    const/4 v2, 0x0

    return v2
.end method
