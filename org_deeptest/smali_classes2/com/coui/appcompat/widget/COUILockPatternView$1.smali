.class Lcom/coui/appcompat/widget/COUILockPatternView$1;
.super Ljava/lang/Object;
.source "COUILockPatternView.java"

# interfaces
.implements Lcom/coui/appcompat/widget/COUILockPatternView$OnCellDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/widget/COUILockPatternView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/widget/COUILockPatternView;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/widget/COUILockPatternView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coui/appcompat/widget/COUILockPatternView;

    .line 462
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUILockPatternView$1;->this$0:Lcom/coui/appcompat/widget/COUILockPatternView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public drawCell()V
    .locals 1

    .line 465
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILockPatternView$1;->this$0:Lcom/coui/appcompat/widget/COUILockPatternView;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUILockPatternView;->invalidate()V

    .line 466
    return-void
.end method
