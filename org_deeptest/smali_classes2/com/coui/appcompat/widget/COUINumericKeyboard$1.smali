.class Lcom/coui/appcompat/widget/COUINumericKeyboard$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "COUINumericKeyboard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/widget/COUINumericKeyboard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/widget/COUINumericKeyboard;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/widget/COUINumericKeyboard;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coui/appcompat/widget/COUINumericKeyboard;

    .line 180
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard$1;->this$0:Lcom/coui/appcompat/widget/COUINumericKeyboard;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 184
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard$1;->this$0:Lcom/coui/appcompat/widget/COUINumericKeyboard;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUINumericKeyboard;->access$000(Lcom/coui/appcompat/widget/COUINumericKeyboard;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 185
    return-void
.end method
