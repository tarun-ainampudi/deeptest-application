.class Lcom/google/android/material/transition/MaterialContainerTransformSharedElementCallback$2;
.super Lcom/google/android/material/transition/TransitionListenerAdapter;
.source "MaterialContainerTransformSharedElementCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/transition/MaterialContainerTransformSharedElementCallback;->setUpReturnTransform(Landroid/app/Activity;Landroid/view/Window;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/transition/MaterialContainerTransformSharedElementCallback;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/google/android/material/transition/MaterialContainerTransformSharedElementCallback;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/android/material/transition/MaterialContainerTransformSharedElementCallback;

    .line 190
    iput-object p1, p0, Lcom/google/android/material/transition/MaterialContainerTransformSharedElementCallback$2;->this$0:Lcom/google/android/material/transition/MaterialContainerTransformSharedElementCallback;

    iput-object p2, p0, Lcom/google/android/material/transition/MaterialContainerTransformSharedElementCallback$2;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Lcom/google/android/material/transition/TransitionListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransitionEnd(Landroid/transition/Transition;)V
    .locals 2
    .param p1, "transition"    # Landroid/transition/Transition;

    .line 194
    invoke-static {}, Lcom/google/android/material/transition/MaterialContainerTransformSharedElementCallback;->access$200()Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/material/transition/MaterialContainerTransformSharedElementCallback;->access$200()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 195
    invoke-static {}, Lcom/google/android/material/transition/MaterialContainerTransformSharedElementCallback;->access$200()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 196
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/android/material/transition/MaterialContainerTransformSharedElementCallback;->access$202(Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/transition/MaterialContainerTransformSharedElementCallback$2;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 201
    iget-object v0, p0, Lcom/google/android/material/transition/MaterialContainerTransformSharedElementCallback$2;->val$activity:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 202
    return-void
.end method
