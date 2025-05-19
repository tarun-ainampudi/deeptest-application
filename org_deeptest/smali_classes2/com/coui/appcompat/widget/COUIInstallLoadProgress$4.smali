.class Lcom/coui/appcompat/widget/COUIInstallLoadProgress$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "COUIInstallLoadProgress.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->performTouchEndAnim(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/widget/COUIInstallLoadProgress;

.field final synthetic val$isActionUp:Z


# direct methods
.method constructor <init>(Lcom/coui/appcompat/widget/COUIInstallLoadProgress;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/coui/appcompat/widget/COUIInstallLoadProgress;

    .line 795
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress$4;->this$0:Lcom/coui/appcompat/widget/COUIInstallLoadProgress;

    iput-boolean p2, p0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress$4;->val$isActionUp:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 798
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress$4;->val$isActionUp:Z

    if-eqz v0, :cond_0

    .line 799
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress$4;->this$0:Lcom/coui/appcompat/widget/COUIInstallLoadProgress;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->access$501(Lcom/coui/appcompat/widget/COUIInstallLoadProgress;)Z

    .line 801
    :cond_0
    return-void
.end method
