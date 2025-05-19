.class Lcom/coui/appcompat/behavior/StatementBehavior$1;
.super Ljava/lang/Object;
.source "StatementBehavior.java"

# interfaces
.implements Landroid/view/View$OnScrollChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/behavior/StatementBehavior;->onStartNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;II)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/behavior/StatementBehavior;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/behavior/StatementBehavior;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coui/appcompat/behavior/StatementBehavior;

    .line 101
    iput-object p1, p0, Lcom/coui/appcompat/behavior/StatementBehavior$1;->this$0:Lcom/coui/appcompat/behavior/StatementBehavior;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollChange(Landroid/view/View;IIII)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "i"    # I
    .param p3, "i1"    # I
    .param p4, "i2"    # I
    .param p5, "i3"    # I

    .line 104
    iget-object v0, p0, Lcom/coui/appcompat/behavior/StatementBehavior$1;->this$0:Lcom/coui/appcompat/behavior/StatementBehavior;

    invoke-static {v0}, Lcom/coui/appcompat/behavior/StatementBehavior;->access$000(Lcom/coui/appcompat/behavior/StatementBehavior;)V

    .line 105
    return-void
.end method
