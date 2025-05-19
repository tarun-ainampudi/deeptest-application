.class Lcom/coui/appcompat/widget/COUIInstallLoadProgress$6;
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


# direct methods
.method constructor <init>(Lcom/coui/appcompat/widget/COUIInstallLoadProgress;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coui/appcompat/widget/COUIInstallLoadProgress;

    .line 830
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress$6;->this$0:Lcom/coui/appcompat/widget/COUIInstallLoadProgress;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 833
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress$6;->this$0:Lcom/coui/appcompat/widget/COUIInstallLoadProgress;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->access$801(Lcom/coui/appcompat/widget/COUIInstallLoadProgress;)Z

    .line 834
    return-void
.end method
